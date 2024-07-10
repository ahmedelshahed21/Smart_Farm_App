import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_farm/Features/sensors/data/repos/sensors_repo/sensors_repo_impl.dart';
import 'package:smart_farm/Features/sensors/presentation/manager/sensors_cubit/sensors_cubit.dart';
import 'package:smart_farm/Features/sensors/presentation/manager/sensors_cubit/sensors_state.dart';
import 'package:smart_farm/core/utils/service_locator.dart';
import 'package:smart_farm/core/widgets/circular_percent.dart';

class SensorsView extends StatefulWidget {
  const SensorsView({super.key});
  static String id = 'SensorsView';

  @override
  State<SensorsView> createState() => _SensorsViewState();
}


class _SensorsViewState extends State<SensorsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: BlocProvider(
          create: (context) => SensorsCubit(getIt.get<SensorsRepoImpl>())..fetchSensorsData(),
          child: BlocBuilder<SensorsCubit, SensorsState>(
              builder: (context, state) {
                if (state is SensorsSuccessState) {
                  return Column(
                    children: [
                      const SizedBox(height: 80,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircularPercent(
                            name: 'Humidity',
                            progressColor: Colors.cyan,
                            percent: (state.sensors[0].humidity.clamp(0, 100)/100),
                          ),
                          CircularPercent(
                            name: 'Soil Humidity',
                            progressColor: Colors.brown,
                            percent: (state.sensors[0].moisture.clamp(0, 100)/100),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50,),
                      CircularPercent(
                        name: 'Temperature',
                        progressColor: Colors.yellow.shade500,
                        measruingUnit: 'C',
                        percent: (state.sensors[0].temp.clamp(0, 100)/100),
                      ),
                    ],
                  );
                }
                else if (state is SensorsFailureState) {
                  return Center(child: Text(state.errMessage ?? 'An unknown error occurred'));
                }
                else{
                  return const Center(child: CircularProgressIndicator(
                    color: Colors.greenAccent,
                  ));
                }
              }),
        )
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:smart_farm/Features/sensors/presentation/manager/sensors_cubit/sensors_cubit.dart';
// import 'package:smart_farm/Features/sensors/presentation/manager/sensors_cubit/sensors_state.dart';
// import 'package:smart_farm/constants.dart';
// import 'package:smart_farm/core/widgets/circular_percent.dart';
// import 'package:smart_farm/core/widgets/custom_text_button.dart';
// import 'package:smart_farm/core/widgets/manual_control_card.dart';
//
//
// class SensorsView extends StatelessWidget {
//   const SensorsView({super.key});
//
//   static String id = 'SensorsView';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           actions: [
//             CustomTextButton(
//               child: 'Manual Control',
//               onPressed: () {
//
//                 buildManualControlBottomSheet(context);
//               },
//               borderRadius: BorderRadius.circular(12),
//             ),
//             const SizedBox(width: 10),
//           ],
//         ),
//         body: BlocBuilder<SensorsCubit, SensorsState>(
//             builder: (context, state) {
//               if (state is SensorsSuccessState) {
//                 return Column(
//                   children: [
//                     const SizedBox(height: 80,),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         CircularPercent(
//                           name: 'Humidity',
//                           progressColor: Colors.cyan,
//                           percent: state.sensors[0].field3/100,
//                         ),
//                         CircularPercent(
//                           name: 'Soil Humidity',
//                           progressColor: Colors.brown,
//                           percent: state.sensors[0].field3/100,
//                         ),
//
//                       ],
//                     ),
//                     const SizedBox(height: 50,),
//                     CircularPercent(
//                       name: 'Temperature',
//                       progressColor: Colors.yellow.shade500,
//                       measruingUnit: 'C',
//                       percent: state.sensors[0].temp/100,
//                     ),
//                   ],
//                 );
//               }
//               else if (state is SensorsFailureState) {
//                 return Center(child: Text(state.errMessage ?? 'An unknown error occurred'));
//               }
//               else{
//                 return const Center(child: CircularProgressIndicator());
//               }
//             })
//     );
//   }
//
//   Future<dynamic> buildManualControlBottomSheet(BuildContext context) {
//     return showModalBottomSheet(
//         backgroundColor: kBottomSheetColor,
//         context: context,
//         builder: (context) {
//           return Column(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               const SizedBox(height: 40),
//               ManualControlCard(
//                 icon: Icons.water_drop_outlined,
//                 iconColor: Colors.blue,
//                 title: 'Water',
//                 status: 'Open',
//                 onPressed: () {
//
//                 },
//               ),
//
//               const SizedBox(height: 20),
//               ManualControlCard(
//                 icon: Icons.roofing,
//                 iconColor: Colors.brown,
//                 title: 'Roof',
//                 status: 'Close',
//                 onPressed: () {
//
//                 },
//               ),
//               const SizedBox(height: 40,)
//             ],
//           );
//         }
//     );
//   }
// }