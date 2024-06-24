import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:smart_farm/Features/custom%20plant/data/models/custom_plant_model.dart';
import 'package:smart_farm/Features/custom%20plant/data/repos/custom_plant_repo.dart';
import 'package:smart_farm/core/errors/failure.dart';
import 'package:smart_farm/core/utils/api_service.dart';

class CustomPlantRepoImpl implements CustomPlantRepo{
  final ApiService apiService;

  CustomPlantRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<CustomPlantModel>>> fetchCustomPlants()async{
    try{
      var data = await apiService.postMustafa(endPoint:'/plant');
      List<CustomPlantModel> plants=[];
      for(var item in data){
        plants.add(CustomPlantModel.fromjson(item));
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