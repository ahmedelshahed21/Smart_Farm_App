import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_farm/Features/manual%20control/data/repos/pump_repo/pump_repo_impl.dart';
import 'package:smart_farm/Features/manual%20control/presentation/manager/pump_cubit/pump_state.dart';

class PumpCubit extends Cubit<PumpState> {
  final PumpRepoImpl _pumpRepoImpl;

  PumpCubit(this._pumpRepoImpl) : super(PumpInitialState());

  void turnOnOrTurnOffPump(String command) async {
    emit(PumpLoadingState());
    try {
      await _pumpRepoImpl.sendPumpCommand(command);
      bool isPumpOn = command == 'TURN_ON_PUMP';
      emit(PumpSuccess(isPumpOn));
    } catch (e) {
      emit(PumpFailure(e.toString()));
    }
  }
}


// Future<void> turnOffPump(String apiKey) async {
  //   emit(PumpLoadingState());
  //   try {
  //     await _pumpRepoImpl.sendPumpCommand('TURN_OFF_PUMP');
  //     emit(PumpSuccess());
  //   } catch (e) {
  //     emit(PumpFailure(e.toString()));
  //   }
  // }

