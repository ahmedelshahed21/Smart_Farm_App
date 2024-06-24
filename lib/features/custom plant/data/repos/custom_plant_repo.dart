import 'package:dartz/dartz.dart';
import 'package:smart_farm/Features/custom%20plant/data/models/custom_plant_model.dart';
import 'package:smart_farm/core/errors/failure.dart';

abstract class CustomPlantRepo{
  Future<Either<Failure,List<CustomPlantModel>>>fetchCustomPlants();
}