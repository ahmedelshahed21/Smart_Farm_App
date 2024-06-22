import 'package:dartz/dartz.dart';
import 'package:smart_farm/Features/home/data/models/plant_model.dart';
import 'package:smart_farm/core/errors/failure.dart';

abstract class PlantRepo{
  Future<Either<Failure,List<PlantModel>>>fetchDefaultPlants();
}