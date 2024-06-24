class SwitchModeModel {
  String field1;
  SwitchModeModel({required this.field1});

  Map<String, dynamic> toJson() => {
    'field1': field1,
  };
}
