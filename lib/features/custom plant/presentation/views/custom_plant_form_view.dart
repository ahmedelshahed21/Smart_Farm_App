import 'package:flutter/material.dart';
import 'package:smart_farm/features/custom%20plant/presentation/views/widgets/body_custom_plant_form_view.dart';

class CustomPlantFormView extends StatelessWidget{
  const CustomPlantFormView({super.key});
  static String id='CustomPlantFormScreen';
  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: BodyCustomPlantFormView()
    );
  }
}