import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget{
  const CustomTextButton({super.key, this.onPressed, this.borderRadius, this.backgroundColor, required this.child,});
  final Widget child;
  final void Function()? onPressed;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;


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
      child: child
    );
  }
}