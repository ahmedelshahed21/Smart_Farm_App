import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_farm/Features/manual%20control/data/repos/roof_repo/roof_repo_impl.dart';
import 'package:smart_farm/Features/manual%20control/presentation/manager/roof_cubit/roof_state.dart';

class RoofCubit extends Cubit<RoofState> {
  final RoofRepoImpl _roofRepoImpl;

  RoofCubit(this._roofRepoImpl) : super(RoofInitialState());

  void openOrCloseOffRoof(String command) async {
    emit(RoofLoadingState());
    try {
      await _roofRepoImpl.sendRoofCommand(command);
      bool isPumpOn = command == 'OPEN_ROOF';
      emit(RoofSuccess(isPumpOn));
    } catch (e) {
      emit(RoofFailure(e.toString()));
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

