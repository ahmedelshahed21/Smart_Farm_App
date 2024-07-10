import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_farm/Features/custom%20plant/data/repos/custom_plant_repo/custom_plant_repo_impl.dart';
import 'package:smart_farm/Features/custom%20plant/presentation/manager/custom_plant_data_cubit/custom_plant_data_cubit.dart';
import 'package:smart_farm/Features/custom%20plant/presentation/views/custom_plant_form_view.dart';
import 'package:smart_farm/Features/custom%20plant/presentation/views/custom_plants_view.dart';
import 'package:smart_farm/Features/home/data/repos/home_repo/home_repo_impl.dart';
import 'package:smart_farm/Features/home/presentation/manager/home_cubit/default_plant_cubit.dart';
import 'package:smart_farm/Features/home/presentation/views/home_view.dart';
import 'package:smart_farm/Features/manual%20control/presentation/views/manual_control_view.dart';
import 'package:smart_farm/Features/sensors/presentation/views/sensors_view.dart';
import 'package:smart_farm/Features/splash/presentation/views/splash_view.dart';
import 'package:smart_farm/core/utils/service_locator.dart';
import 'package:smart_farm/core/widgets/back_icon_button.dart';
import 'package:smart_farm/observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  setupServiceLocator();
  runApp(
      MultiBlocProvider(
      providers: [
    BlocProvider(create: (context) => DefaultPlantCubit(getIt.get<HomeRepoImpl>())..fetchDefaultPlants()),
    BlocProvider(create: (context)=>CustomPlantCubit(getIt.get<CustomPlantRepoImpl>())..fetchCustomPlants()),
    //BlocProvider(create: ),
  ], child: const SmartFarmApp()));
}

class SmartFarmApp extends StatelessWidget {
  const SmartFarmApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Colors.black,
            appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
            actionIconTheme: ActionIconThemeData(
                backButtonIconBuilder: (context) => const BackIconButton())),
        routes: {
          HomeView.id: (context) => const HomeView(),
          CustomPlantsView.id: (context) => const CustomPlantsView(),
          CustomPlantFormView.id: (context) => const CustomPlantFormView(),
          SensorsView.id: (context) => const SensorsView(),
          ManualControlView.id: (context) => const ManualControlView(),
        },
        home: const SplashView());
  }
}
