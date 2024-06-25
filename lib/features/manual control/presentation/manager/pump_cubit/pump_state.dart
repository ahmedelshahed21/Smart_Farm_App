abstract class PumpState {
  const PumpState();
}

class PumpInitialState extends PumpState {}

class PumpLoadingState extends PumpState {}

class PumpSuccess extends PumpState {
  final bool isPumpOn;
  PumpSuccess(this.isPumpOn);
}

class PumpFailure extends PumpState {
  final String error;
  PumpFailure(this.error);
}
