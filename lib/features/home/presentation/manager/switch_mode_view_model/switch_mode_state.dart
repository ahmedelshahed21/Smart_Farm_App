abstract class SwitchModeState {
  const SwitchModeState();
}

class SwitchModeInitial extends SwitchModeState {}

class SwitchModeLoading extends SwitchModeState {}

class SwitchModeSuccess extends SwitchModeState {}

class SwitchModeFailure extends SwitchModeState {
  final String error;
  SwitchModeFailure(this.error);
}
