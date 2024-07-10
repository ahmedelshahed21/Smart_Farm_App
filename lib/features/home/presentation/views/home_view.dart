import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:smart_farm/Features/home/data/repos/switch_mode_repo/switch_mode_repo_impl.dart';
import 'package:smart_farm/Features/home/presentation/manager/switch_mode_view_model/switch_mode_view_model.dart';
import 'package:smart_farm/Features/home/presentation/views/widgets/home_drawer.dart';
import 'package:smart_farm/Features/home/presentation/views/widgets/custom_horizontal_listview.dart';
import 'package:smart_farm/Features/home/presentation/views/widgets/custom_plant_container.dart';
import 'package:smart_farm/Features/home/presentation/views/widgets/home_cards.dart';
import 'package:smart_farm/core/utils/functions/custom_snack_bar.dart';
import 'package:smart_farm/core/utils/styles_app.dart';
import 'package:smart_farm/constants.dart';

bool isSystemAuto = true;

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static String id = 'HomeScreen';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final switchModeRepoImpl = SwitchModeRepoImpl(Dio());
    final switchModeViewModel = SwitchModeViewModel(switchModeRepoImpl);
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
      key: scaffoldKey,
      drawer: const HomeDrawer(),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            )),
        title: Text('SmartFarm', style: StylesApp.styleBold30(context).copyWith(color: Colors.white)),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        actions: [
          Switch(
              activeColor: kSecondaryColor,
              activeTrackColor: Colors.greenAccent,
              inactiveTrackColor: Colors.white,
              autofocus: true,
              inactiveThumbColor: Colors.orange,
              value: isSystemAuto,
              onChanged: (val) async {
                setState(() {
                  isSystemAuto = val;
                });
                if (isSystemAuto == true) {
                  await switchModeViewModel.switchMode("1");
                  customSnackBar(context, 'Automatic Mode Activated',
                      icon: Icons.auto_mode, iconColor: Colors.orangeAccent);
                } else {
                  await switchModeViewModel.switchMode("0");
                  customSnackBar(context, 'Manual Control Activated',
                      icon: Icons.fiber_manual_record, iconColor: Colors.white);
                }
              }),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: const Column(
        children: [
          CustomHorizontalListView(),
          CustomPlantContainer(),
          Expanded(child: SizedBox(height: 100)),
          HomeCards(),
          Expanded(child: SizedBox(height: 100)),
        ],
      ),
    );
  }
}
