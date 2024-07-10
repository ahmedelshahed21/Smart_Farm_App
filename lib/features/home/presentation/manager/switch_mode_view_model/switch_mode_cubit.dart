import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_farm/Features/home/data/repos/switch_mode_repo/switch_mode_repo.dart';
import 'package:smart_farm/Features/home/presentation/manager/switch_mode_view_model/switch_mode_state.dart';

class SwitchModeCubit extends Cubit<SwitchModeState> {
  final SwitchModeRepo switchModeRepo;

  SwitchModeCubit(this.switchModeRepo) : super(SwitchModeInitial());

  Future<void> switchMode(String value) async {
    emit(SwitchModeLoading());
    try {
      await switchModeRepo.switchMode(value);
      emit(SwitchModeSuccess());
    } catch (e) {
      emit(SwitchModeFailure(e.toString()));
    }
  }
}
