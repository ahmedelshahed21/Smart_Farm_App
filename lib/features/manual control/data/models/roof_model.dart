class RoofModel {
  final String command;

  RoofModel({required this.command});

  Map<String, dynamic> toJson() {
    return {
      'command_string': command,
    };
  }
}
