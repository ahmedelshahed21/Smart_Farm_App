import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';


class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key,this.icon,this.onPressed, this.iconColor,this.backgroundColor,required this.radius, this.containerHeight, this.containerWidth, this.iconSize});
  final IconData? icon;
  final Color? iconColor;
  final Color? backgroundColor;
  final void Function()? onPressed;
  final double radius;
  final double? containerHeight;
  final double? containerWidth;
  final double? iconSize;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: containerHeight ?? 60,
      width: containerWidth ?? 60,
      decoration: BoxDecoration(
          color: backgroundColor??kItemColor,
          borderRadius: BorderRadius.circular(radius)
      ),
      child: IconButton(
          onPressed: onPressed,
          iconSize: iconSize ?? 40,
          icon: Icon(icon,
            color: iconColor,
          )
      ),
    );
  }
}