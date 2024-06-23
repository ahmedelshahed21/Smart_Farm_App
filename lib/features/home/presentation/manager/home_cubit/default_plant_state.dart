import 'package:smart_farm/Features/home/data/model/plant_model.dart';

abstract class DefaultPlantState{
  const DefaultPlantState();
}
class DefaultPlantInitialState extends DefaultPlantState{}

class DefaultPlantLoadingState extends DefaultPlantState{}

class DefaultPlantSuccess extends DefaultPlantState{
  final List<PlantModel> plants;
  DefaultPlantSuccess({required this.plants});
}

class DefaultPlantFailure extends DefaultPlantState{
  final String? errMessage;
  DefaultPlantFailure({required this.errMessage});
}