import 'package:dartz/dartz.dart';
import 'package:smart_farm/Features/home/data/model/plant_model.dart';
import 'package:smart_farm/core/errors/failure.dart';

abstract class HomeRepo{
  Future<Either<Failure,List<PlantModel>>>fetchDefaultPlants();
}