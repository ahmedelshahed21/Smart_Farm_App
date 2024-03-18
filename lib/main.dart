import 'package:flutter/material.dart';
import 'package:smart_farm/core/widgets/return_icon_button.dart';
import 'package:smart_farm/features/splash/presentation/views/splash_view.dart';
import 'package:smart_farm/features/custom%20plant/presentation/views/custom_plant_form_view.dart';
import 'package:smart_farm/features/custom%20plant/presentation/views/custom_plants_view.dart';
import 'package:smart_farm/features/home/presentation/views/home_view.dart';
import 'package:smart_farm/screens/manual_control_view.dart';
import 'package:smart_farm/screens/percentages_view.dart';


void main() {
  runApp(
     MaterialApp(
       theme: ThemeData.dark().copyWith(
           scaffoldBackgroundColor: Colors.black,
           appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
           actionIconTheme: ActionIconThemeData(backButtonIconBuilder: (context) => const ReturnIconButton())),
       routes: {
         HomeView.id:(context) => const HomeView(),
         AddingCustomPlantView.id:(context) => const AddingCustomPlantView(),
         CustomPlantFormView.id:(context) => const CustomPlantFormView(),
         PercentagesView.id:(context) => const PercentagesView(),
         ManualControlView.id:(context) => const ManualControlView(),
       },
       debugShowCheckedModeBanner: false,
      home: const SplashView()
    )
  );
}


