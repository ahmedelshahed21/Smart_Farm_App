import 'package:flutter/material.dart';
import 'package:smart_farm/core/utils/styles_app.dart';

class CustomTextButton extends StatelessWidget{
  const CustomTextButton({super.key, required this.child, this.onPressed, this.borderRadius, this.backgroundColor, this.textColor, this.fontSize, this.letterSpacing});
  final String child;
  final void Function()? onPressed;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;
  final Color? textColor;
  final double? fontSize;
  final double? letterSpacing;

  @override
  Widget build(BuildContext context) {

    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor ?? Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? const BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft:  Radius.circular(12),
          )
        )
      ),
      onPressed: onPressed,
      child: FittedBox(
        //fit: BoxFit.scaleDown,
        child: Text(child,
          style: StylesApp.styleSemiBold18(context).copyWith(
            color: textColor,
            fontSize: fontSize,
            letterSpacing: letterSpacing
          )
        ),
      ),
    );
  }
}