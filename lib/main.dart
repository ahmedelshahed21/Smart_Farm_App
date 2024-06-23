import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_farm/Features/custom%20plant/presentation/views/custom_plant_form_view.dart';
import 'package:smart_farm/Features/custom%20plant/presentation/views/custom_plants_view.dart';
import 'package:smart_farm/Features/home/data/repos/home_repo_impl.dart';
import 'package:smart_farm/Features/home/presentation/manager/home_cubit/default_plant_cubit.dart';
import 'package:smart_farm/Features/home/presentation/views/home_view.dart';
import 'package:smart_farm/Features/login/presentation/manager/login_cubit/login_cubit.dart';
import 'package:smart_farm/Features/sensors%20readings/presentation/views/percentages_view.dart';
import 'package:smart_farm/Features/splash/presentation/views/splash_view.dart';
import 'package:smart_farm/core/utils/service_locator.dart';
import 'package:smart_farm/core/widgets/back_icon_button.dart';
import 'package:smart_farm/observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  setupServiceLocator();
  runApp(
      MultiBlocProvider(providers: [
    BlocProvider(create: (context) => LoginCubit()),
    BlocProvider(create: (context) => DefaultPlantCubit(getIt.get<HomeRepoImpl>())..fetchDefaultPlants())
  ], child: const SmartFarmApp()));
}

class SmartFarmApp extends StatelessWidget {
  const SmartFarmApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // locale: DevicePreview.locale(context),
        // builder: DevicePreview.appBuilder,
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
          PercentagesView.id: (context) => const PercentagesView(),
        },
        home: const SplashView());
  }
}
