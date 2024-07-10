import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:smart_farm/Features/sensors/data/models/sensors_model.dart';
import 'package:smart_farm/Features/sensors/data/repos/sensors_repo/sensors_repo.dart';
import 'package:smart_farm/Features/sensors/presentation/manager/sensors_cubit/sensors_state.dart';
import 'package:smart_farm/core/errors/failure.dart';

class SensorsCubit extends Cubit<SensorsState> {
  final SensorsRepo sensorsRepo;

  SensorsCubit(this.sensorsRepo) : super(SensorsInitialState()) {
    print('SensorsCubit created');
  }

  Future<void> fetchSensorsData() async {
    emit(SensorsLoadingState());
    Either<Failure, SensorModel> result = await sensorsRepo.fetchSensorsData();
    result.fold(
          (failure) {
        print('Error: ${failure.errMessage}');
        emit(SensorsFailureState(errMessage: failure.errMessage));
      },
          (sensor) {
        emit(SensorsSuccessState(sensors: [sensor]));
      },
    );
  }
}




// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:smart_farm/Features/sensors%20readings/data/repos/sensors_repo.dart';
// import 'package:smart_farm/Features/sensors%20readings/presentation/manager/sensors_cubit/sensors_state.dart';
//
// class SensorsCubit extends Cubit<SensorsState> {
//   final SensorsRepo sensorsRepo;
//
//   SensorsCubit(this.sensorsRepo) : super(SensorsInitialState()) {
//     print('SensorsCubit created');
//   }
//
//   Future<void> fetchSensorsData() async {
//     emit(SensorsLoadingState());
//     try {
//       var result = await sensorsRepo.fetchSensorsData();
//       result.fold(
//             (failure) {
//           print('Error: ${failure.errMessage}');
//           emit(SensorsFailureState(errMessage: failure.errMessage));
//         },
//             (sensors) {
//           emit(SensorsSuccessState(sensors: sensors));
//         },
//       );
//     } catch (e) {
//       print('Error: $e');
//       emit(SensorsFailureState(errMessage: e.toString()));
//     }
//   }


// Future<void> fetchSensorsData() async {
  //   emit(SensorsLoadingState());
  //   var result = await sensorsRepo.fetchSensorsData();
  //   result.fold(
  //         (failure) {
  //       print('Error: ${failure.errMessage}');
  //       emit(SensorsFailureState(errMessage: 'errMessage'));
  //     },
  //         (sensors) {
  //       print('Plants loaded successfully');
  //       emit(SensorsSuccessState(sensors: sensors));
  //     },
  //   );
  // }
//}