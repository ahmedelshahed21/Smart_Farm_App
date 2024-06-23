import 'package:dartz/dartz.dart';
import 'package:smart_farm/Features/sensors/data/models/sensors_model.dart';

import 'package:smart_farm/core/errors/failure.dart';

abstract class SensorsRepo{
  Future<Either<Failure,SensorModel>>fetchSensorsData();
}