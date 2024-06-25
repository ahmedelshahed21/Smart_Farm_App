abstract class RoofState {
  const RoofState();
}

class RoofInitialState extends RoofState {}

class RoofLoadingState extends RoofState {}

class RoofSuccess extends RoofState {
  final bool isRoofOpen;
  RoofSuccess(this.isRoofOpen);
}

class RoofFailure extends RoofState {
  final String error;
  RoofFailure(this.error);
}
