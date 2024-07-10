import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_farm/Features/custom%20plant/data/repos/custom_plant_repo/custom_plant_repo.dart';
import 'package:smart_farm/Features/custom%20plant/presentation/manager/custom_plant_data_cubit/custom_plant_state.dart';



class CustomPlantCubit extends Cubit<CustomPlantState> {
  final CustomPlantRepo customPlantRepo;

  CustomPlantCubit(this.customPlantRepo) : super(const CustomPlantInitialState()) {
    print('CustomPlantCubit created');
  }

  Future<void> fetchCustomPlants() async {
    emit(const CustomPlantLoadingState());
    var result = await customPlantRepo.fetchCustomPlants();
    result.fold(
          (failure) {
        print('Error: ${failure.errMessage}');
        emit(CustomPlantFailure(errMessage: failure.errMessage));
      },
          (customPlants) {
        print('Custom Plants loaded successfully');
        emit(CustomPlantSuccess(customPlants: customPlants));
      },
    );
  }
}
