import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:smart_farm/Features/home/data/models/default_plant_model.dart';
import 'package:smart_farm/Features/home/data/repos/home_repo/home_repo.dart';
import 'package:smart_farm/core/errors/failure.dart';
import 'package:smart_farm/core/utils/api_service.dart';

class HomeRepoImpl extends HomeRepo{

  final ApiService apiService;
  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<DefaultPlantModel>>> fetchDefaultPlants()async{
    try{
      var data = await apiService.getMustafa(endPoint:'/plant');
      List<DefaultPlantModel> plants=[];
      for(var item in data){
        plants.add(DefaultPlantModel.fromjson(item));
      }
      return right(plants);
    }catch(e){
      if(e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      else{
        return left(ServerFailure(errMessage: e.toString()));
      }
    }
  }
}






// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:smart_farm/Features/home/data/model/default_plant_model.dart';
// import 'package:smart_farm/Features/home/data/repos/home_repo.dart';
// import 'package:smart_farm/core/errors/failure.dart';
// import 'package:smart_farm/core/utils/api_service.dart';
//
// class HomeRepoImpl extends HomeRepo {
//   final ApiService apiService;
//
//   HomeRepoImpl(this.apiService);
//
//   @override
//   Future<Either<Failure, List<PlantModel>>> fetchDefaultPlants() async {
//     try {
//       var response = await apiService.get(endPoint: '/plant');
//       print('API Response: $response');
//       List<PlantModel> plants = [];
//
//       // Check if the response is a list
//       if (response is List) {
//         for (var item in response) {
//           print('Parsing item: $item');
//           plants.add(PlantModel.fromjson(item));
//         }
//       } else {
//         print('Unexpected response format: $response');
//         return left(ServerFailure(errMessage: 'Unexpected response format'));
//       }
//
//       print('Parsed Plants: $plants');
//       return right(plants);
//     } on DioError catch (e) {
//       print('Dio Error occurred: ${e.message}');
//       return left(ServerFailure.fromDioException(e));
//     } catch (e) {
//       print('Error occurred: $e');
//       return left(ServerFailure(errMessage: e.toString()));
//     }
//   }
// }