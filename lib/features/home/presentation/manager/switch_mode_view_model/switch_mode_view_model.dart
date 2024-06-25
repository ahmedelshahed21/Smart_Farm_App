import 'package:smart_farm/Features/home/data/repos/switch_mode_repo/switch_mode_repo_impl.dart';

class SwitchModeViewModel {
  final SwitchModeRepoImpl switchModeRepoImpl;

  SwitchModeViewModel(this.switchModeRepoImpl);

  Future<void> switchMode(String value)async {
    await switchModeRepoImpl.switchMode(value);
  }
}
