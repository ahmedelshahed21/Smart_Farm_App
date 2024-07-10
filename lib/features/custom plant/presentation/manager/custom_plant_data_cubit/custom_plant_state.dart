import 'package:smart_farm/Features/custom%20plant/data/models/custom_plant_model.dart';


abstract class CustomPlantState {
  const CustomPlantState();
}

class CustomPlantInitialState extends CustomPlantState {
  const CustomPlantInitialState();
}

class CustomPlantLoadingState extends CustomPlantState {
  const CustomPlantLoadingState();
}

class CustomPlantSuccess extends CustomPlantState {
  final List<CustomPlantModel> customPlants;

  const CustomPlantSuccess({required this.customPlants});
}

class CustomPlantFailure extends CustomPlantState {
  final String? errMessage;
  const CustomPlantFailure({required this.errMessage});
}
