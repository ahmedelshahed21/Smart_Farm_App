import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:smart_farm/Features/home/data/models/plant_model.dart';
import 'package:smart_farm/Features/home/data/repos/plant_repo.dart';
import 'package:smart_farm/core/errors/failure.dart';
import 'package:smart_farm/core/utils/api_service.dart';

class PlantRepoImpl extends PlantRepo{

  final ApiService apiService;

  PlantRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<PlantModel>>> fetchDefaultPlants()async{
    try{
      var data = await apiService.get(endPoint:'plant');
      List<PlantModel> plants=[];
      for(var item in data['items']){
        plants.add(PlantModel.fromjson(item));
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