import 'package:dartz/dartz.dart';
import 'package:smart_farm/Features/sensors/data/models/sensors_model.dart';
import 'package:smart_farm/Features/sensors/data/repos/sensors_repo/sensors_repo.dart';
import 'package:smart_farm/core/errors/failure.dart';
import 'package:smart_farm/core/utils/api_service.dart';

class SensorsRepoImpl implements SensorsRepo {
  final ApiService _apiService;
  SensorsRepoImpl(this._apiService);
  @override
  Future<Either<Failure, SensorModel>> fetchSensorsData() async{
    try {
      dynamic response = await _apiService.getMansour();
      if (response != null) {
        final SensorModel sensor = SensorModel.fromjson(response);
        return Right(sensor);
      } else {
        return Left(ServerFailure(errMessage: 'Failed to fetch sensor data'));
      }
    } catch (e) {
      print('Error: $e');
      return Left(ServerFailure(errMessage: 'Failed to fetch sensor data'));
    }

  }
}





// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:smart_farm/Features/sensors%20readings/data/models/sensors_model.dart';
// import 'package:smart_farm/Features/sensors%20readings/data/repos/sensors_repo.dart';
// import 'package:smart_farm/core/errors/failure.dart';
// import 'package:smart_farm/core/utils/api_service.dart';
//
// class SensorsRepoImpl implements SensorsRepo{
//
//   final ApiService apiService;
//   SensorsRepoImpl(this.apiService);
//
//   @override
//   Future<Either<Failure, List<SensorModel>>> fetchSensorsData()async{
//     try{
//       var data = await apiService.getMansour();
//       List<SensorModel> sensors=[];
//       for(var item in data){
//         sensors.add(SensorModel.fromjson(item));
//       }
//       return right(sensors);
//     }catch(e){
//       if(e is DioException) {
//         return left(ServerFailure.fromDioException(e));
//       }
//       else{
//         return left(ServerFailure(errMessage: e.toString()));
//       }
//     }
//   }
// }