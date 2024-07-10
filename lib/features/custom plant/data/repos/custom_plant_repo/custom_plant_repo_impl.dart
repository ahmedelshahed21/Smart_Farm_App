import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:smart_farm/Features/custom%20plant/data/models/custom_plant_model.dart';
import 'package:smart_farm/Features/custom%20plant/data/repos/custom_plant_repo/custom_plant_repo.dart';
import 'package:smart_farm/core/errors/failure.dart';
import 'package:smart_farm/core/utils/api_service.dart';

class CustomPlantRepoImpl implements CustomPlantRepo{
  final ApiService apiService;

  CustomPlantRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<CustomPlantModel>>> fetchCustomPlants()async{
    try{
      var data = await apiService.getMustafa(endPoint:'/plant');
      List<CustomPlantModel> customPlant=[];
      for(var item in data){
        customPlant.add(CustomPlantModel.fromJson(item));
      }
      return right(customPlant);
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