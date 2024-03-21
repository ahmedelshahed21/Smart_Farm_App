import 'package:flutter/material.dart';
import 'package:smart_farm/core/widgets/custom_text_button.dart';

class PlantAction extends StatelessWidget{
  const PlantAction({super.key, this.onPressedManualButton, this.onPressedAutomaticButton});
  final void Function()? onPressedManualButton;
  final void Function()? onPressedAutomaticButton;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.04),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height*0.08,
              child: CustomTextButton(
                onPressed: onPressedManualButton,
                child: 'Manual Control',
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height*0.08,
              child: CustomTextButton(
                onPressed: onPressedAutomaticButton,
                child: 'Automatic',
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