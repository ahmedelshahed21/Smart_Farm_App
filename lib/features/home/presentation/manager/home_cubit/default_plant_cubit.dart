import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_farm/Features/home/data/repos/home_repo/home_repo.dart';
import 'package:smart_farm/Features/home/presentation/manager/home_cubit/default_plant_state.dart';

class DefaultPlantCubit extends Cubit<DefaultPlantState> {
  final HomeRepo homeRepo;

  DefaultPlantCubit(this.homeRepo) : super(DefaultPlantInitialState()) {
    print('DefaultPlantCubit created');
  }

  Future<void> fetchDefaultPlants() async {
    emit(DefaultPlantLoadingState());
    var result = await homeRepo.fetchDefaultPlants();
    result.fold(
          (failure) {
        print('Error: ${failure.errMessage}');
        emit(DefaultPlantFailure(errMessage: failure.errMessage));
      },
          (plants) {
        print('Plants loaded successfully');
        emit(DefaultPlantSuccess(plants: plants));
      },
    );
  }
}
