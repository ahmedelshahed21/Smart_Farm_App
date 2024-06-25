class PumpModel {
  final String command;

  PumpModel({required this.command});

  Map<String, dynamic> toJson() {
    return {
      'command_string': command,
    };
  }
}
