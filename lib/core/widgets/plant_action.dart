import 'package:flutter/material.dart';
import 'package:smart_farm/core/widgets/custom_text_button.dart';

class PlantAction extends StatelessWidget{
  const PlantAction({super.key, this.onPressedCustomizeButton, this.onPressedSensorReadings});
  final void Function()? onPressedCustomizeButton;
  final void Function()? onPressedSensorReadings;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.01),
      child: Row(
        children: [
          Expanded(
            //flex: 2,
            child: SizedBox(
              height: MediaQuery.of(context).size.height*0.08,
              child: CustomTextButton(
                onPressed: onPressedCustomizeButton,
                child: 'Control',
              ),
            ),
          ),
          Expanded(
            //flex: 3,
            child: SizedBox(
              height: MediaQuery.of(context).size.height*0.08,
              child: CustomTextButton(
                onPressed: onPressedSensorReadings,
                child: 'Sensor Readings',
                backgroundColor: Colors.deepOrangeAccent,
                textColor: Colors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}