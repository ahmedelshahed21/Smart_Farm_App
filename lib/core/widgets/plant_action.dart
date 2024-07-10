import 'package:flutter/material.dart';
import 'package:smart_farm/core/utils/styles_app.dart';
import 'package:smart_farm/core/widgets/custom_text_button.dart';

class PlantAction extends StatelessWidget{
  const PlantAction({super.key, this.onPressedCustomizeDataButton, this.onPressedConfirmButton, this.textColor, this.fontSize, this.letterSpacing});
  final void Function()? onPressedCustomizeDataButton;
  final void Function()? onPressedConfirmButton;
  final Color? textColor;
  final double? fontSize;
  final double? letterSpacing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.01),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height*0.08,
              child: CustomTextButton(
                onPressed: onPressedCustomizeDataButton,
                child: Text('Customize Data',
                  style: StylesApp.styleSemiBold16(context).copyWith(
                      color: textColor,
                      fontSize: fontSize,
                      letterSpacing: letterSpacing
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height*0.08,
              child: CustomTextButton(
                onPressed: onPressedConfirmButton,
                backgroundColor: Colors.deepOrangeAccent,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                child: FittedBox(
                  child: Text('Confirm',
                    style: StylesApp.styleSemiBold16(context).copyWith(
                        color: Colors.white,
                        fontSize: 20,
                        letterSpacing: 3
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}