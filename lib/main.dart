import 'package:flutter/material.dart';
import 'package:smart_farm/features/splash/presentation/views/splash_view.dart';
import 'package:smart_farm/features/custom%20plant/presentation/views/custom_plant_form_view.dart';
import 'package:smart_farm/features/custom%20plant/presentation/views/custom_plants_view.dart';
import 'package:smart_farm/features/home/presentation/views/home_view.dart';
import 'package:smart_farm/screens/manual_control_screen.dart';
import 'package:smart_farm/screens/percentages_screen.dart';
//import 'package:smart_farm/screens/plant_data_view.dart';

void main() {
  runApp(
     MaterialApp(
       theme: ThemeData.dark(),
       routes: {
         HomeView.id:(context) => const HomeView(),
         AddingCustomPlantView.id:(context) => const AddingCustomPlantView(),
         CustomPlantFormView.id:(context) => const CustomPlantFormView(),
         PercentagesScreen.id:(context) => const PercentagesScreen(),
         ManualControlScreen.id:(context) => const ManualControlScreen(),
       },
       debugShowCheckedModeBanner: false,
      home: const SplashView()
    )
  );
}


