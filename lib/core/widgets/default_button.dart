import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/utils/styles_app.dart';

class DefaultButton extends StatelessWidget{
  final String buttonName;
  final VoidCallback onPressed;
  final Color? borderColor;
  const DefaultButton({super.key,required this.buttonName,required this.onPressed,this.borderColor});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40)
          ),
          side: BorderSide(
              width: 1, color: borderColor ?? kPrimaryColor
          ),
          padding: const EdgeInsets.only(top:10,bottom:10,right: 50,left: 50)
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(buttonName,
          style:StylesApp.styleMostThick20(context)
        ),
      ),
    );
  }
}