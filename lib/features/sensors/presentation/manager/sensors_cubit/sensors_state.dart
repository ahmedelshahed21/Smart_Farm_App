import 'package:smart_farm/Features/sensors/data/models/sensors_model.dart';

abstract class SensorsState{}
class SensorsInitialState extends SensorsState{}
class SensorsLoadingState extends SensorsState{}
class SensorsSuccessState extends SensorsState{
  final List<SensorModel> sensors;
  SensorsSuccessState({required this.sensors});
}
class SensorsFailureState extends SensorsState{
  String? errMessage;
  SensorsFailureState({required this.errMessage});
}
