import 'package:go_router/go_router.dart';
import 'package:smart_farm/Features/home/presentation/views/home_view.dart';
import 'package:smart_farm/Features/splash/presentation/views/splash_view.dart';

abstract class AppRouter{
  static const kHomeView='/homeView';
  // static const kPlantView='/kBookDetailsView';
  static const kPlantView='/kPlantView';
  static final router=GoRouter(
      routes: [
        GoRoute(
            path: '/',
            builder: (context,state) => const SplashView()
        ),
        GoRoute(
            path: kHomeView,
            builder: (context,state) => const HomeView()
        ),
        // GoRoute(
        //     path: kPlantView,
        //     builder: (context,state) => BlocProvider(
        //         create: (context) => HomeCubit(getIt.get<HomeRepoImpl>()),
        //         child: PlantView(defaultPlantName: st)
        //     )
        // ),
      ]
  );

}