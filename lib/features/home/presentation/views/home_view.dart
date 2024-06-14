import 'package:flutter/material.dart';
import 'package:smart_farm/core/utils/styles_app.dart';
import 'package:smart_farm/features/home/presentation/views/widgets/custom_horizontal_listview.dart';
import 'package:smart_farm/features/home/presentation/views/widgets/custom_plant_container.dart';
import 'package:smart_farm/constants.dart';

class HomeView extends StatelessWidget{

  const HomeView({super.key});
  static String id='HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SmartFarm',
          style: StylesApp.styleBold24(context)
        ),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        //elevation: 0,
      ),
      body:
      const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomHorizontalListView(),
          CustomPlantContainer(),
        ],
      ),
    );
  }
}



