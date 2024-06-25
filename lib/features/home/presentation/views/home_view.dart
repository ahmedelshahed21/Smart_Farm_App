import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:smart_farm/Features/home/data/repos/switch_mode_repo/switch_mode_repo_impl.dart';
import 'package:smart_farm/Features/home/presentation/manager/switch_mode_view_model/switch_mode_view_model.dart';
import 'package:smart_farm/Features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:smart_farm/Features/home/presentation/views/widgets/custom_horizontal_listview.dart';
import 'package:smart_farm/Features/home/presentation/views/widgets/custom_plant_container.dart';

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
      drawer: const CustomDrawer(),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            )),
        title: Text('SmartFarm', style: StylesApp.styleBold24(context)),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        actions: [
          Switch(
              activeColor: kSecondaryColor,
              activeTrackColor: Colors.greenAccent,
              inactiveTrackColor:Colors.white,
              autofocus: true,
              inactiveThumbColor: Colors.orange,
              value: isSystemAuto,
              onChanged: (val) async {
                setState(() {
                  isSystemAuto = val;
                });
                if (isSystemAuto == false) {
                  await switchModeViewModel.switchMode("0");
                  //print('Manual Control Mode');
                }
                else{
                  await switchModeViewModel.switchMode("1");
                  //print('Automatic Mode');
                }
              }),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomHorizontalListView(),
          CustomPlantContainer(),
        ],
      ),
    );
  }
}
