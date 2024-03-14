import 'package:flutter/material.dart';
import 'package:smart_farm/core/components/custom_text_button.dart';

class PlantAction extends StatelessWidget{
  const PlantAction({super.key});




  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: CustomTextButton(
              onPressed: (){},
              child: 'Manual Control',
            ),
          ),
          Expanded(
            child: CustomTextButton(
              onPressed: (){},
              child: 'Automatic',
              backgroundColor: Colors.deepOrangeAccent,
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}