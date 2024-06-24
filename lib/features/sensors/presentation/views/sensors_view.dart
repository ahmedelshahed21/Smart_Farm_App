import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_farm/Features/sensors/presentation/manager/sensors_cubit/sensors_cubit.dart';
import 'package:smart_farm/Features/sensors/presentation/manager/sensors_cubit/sensors_state.dart';
import 'package:smart_farm/core/widgets/circular_percent.dart';



class SensorsView extends StatelessWidget {
  const SensorsView({super.key});

  static String id = 'SensorsView';

  @override
  Widget build(BuildContext context) {
    // final switchModeRepoImpl = SwitchModeRepoImpl(Dio());
    // final switchModeViewModel = SwitchModeViewModel(switchModeRepoImpl);
    return Scaffold(
        appBar: AppBar(
          // actions: [
          //   CustomTextButton(
          //     child: 'Manual Control',
          //     onPressed: () async{
          //       // await switchModeViewModel.switchMode("0");
          //       buildManualControlBottomSheet(context);
          //     },
          //     borderRadius: BorderRadius.circular(12),
          //   ),
          //   const SizedBox(width: 10),
          // ],
        ),
        body: BlocBuilder<SensorsCubit, SensorsState>(
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
                          percent: state.sensors[0].field3/100,
                        ),
                        CircularPercent(
                          name: 'Soil Humidity',
                          progressColor: Colors.brown,
                          percent: state.sensors[0].field3/100,
                        ),
                      ],
                    ),
                    const SizedBox(height: 50,),
                    CircularPercent(
                      name: 'Temperature',
                      progressColor: Colors.yellow.shade500,
                      measruingUnit: 'C',
                      percent: state.sensors[0].temp/100,
                    ),
                  ],
                );
              }
              else if (state is SensorsFailureState) {
                return Center(child: Text(state.errMessage ?? 'An unknown error occurred'));
              }
              else{
                return const Center(child: CircularProgressIndicator());
              }
            })
    );
  }

  // Future<dynamic> buildManualControlBottomSheet(BuildContext context) {
  //
  //   String open="Open";
  //   String close="Close";
  //
  //   return showModalBottomSheet(
  //       backgroundColor: kBottomSheetColor,
  //       context: context,
  //       builder: (context) {
  //         return Column(
  //           mainAxisSize: MainAxisSize.min,
  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //           children: [
  //             const SizedBox(height: 40),
  //             ManualControlCard(
  //               icon: Icons.water_drop_outlined,
  //               iconColor: Colors.blue,
  //               title: 'Water',
  //               status: open,
  //               onPressed: () {
  //
  //               },
  //             ),
  //             const SizedBox(height: 20),
  //             ManualControlCard(
  //               icon: Icons.roofing,
  //               iconColor: Colors.brown,
  //               title: 'Roof',
  //               status: close,
  //               onPressed: () {
  //
  //               },
  //             ),
  //             const SizedBox(height: 40,)
  //           ],
  //         );
  //       }
  //   );
  // }

  // Future<void> switchMode(String value) async {
  //   final url = 'https://yourapiurl.com/endpoint'; // Replace with your API URL
  //
  //   SwitchModeModel data = SwitchModeModel(field1: value);
  //   String jsonBody = json.encode(data.toJson());
  //
  //   Dio dio = Dio();
  //
  //   try {
  //     final response = await dio.post(
  //       url,
  //       options: Options(
  //         headers: {
  //           'Content-Type': 'application/json',
  //         },
  //       ),
  //       data: jsonBody,
  //     );
  //
  //     if (response.statusCode == 200) {
  //       print('Data sent successfully');
  //     } else {
  //       print('Failed to send data');
  //     }
  //   } catch (e) {
  //     print('Error: $e');
  //   }
  // }
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