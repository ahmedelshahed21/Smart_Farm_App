import 'package:flutter/material.dart';
import 'package:smart_farm/features/home/presentation/views/widgets/custom_horizontal_listview.dart';
import 'package:smart_farm/features/home/presentation/views/widgets/custom_plant_card.dart';
import 'package:smart_farm/constants.dart';

class HomeView extends StatelessWidget{

  const HomeView({super.key});
  static String id='HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SmartFarm',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24
          ),
        ),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        //elevation: 0,
      ),
      body:
      const Column(
        children: [
          CustomHorizontalListView(),
          CustomPlantContainer(),
        ],
      ),
    );
  }
}



