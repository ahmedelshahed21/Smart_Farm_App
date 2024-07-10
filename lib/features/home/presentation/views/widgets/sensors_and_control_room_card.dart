import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/utils/styles_app.dart';

class SensorsAndControlRoomCard extends StatelessWidget {
  const SensorsAndControlRoomCard(
      {super.key,
      required this.text,
      required this.image,
      required this.imageColor,
      this.onTap,
      this.backgroundColor,
      this.textColor});

  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final String image;
  final Color imageColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12.0),
        height: 140,
        width: 140,
        decoration: BoxDecoration(
            color: backgroundColor ?? kSecondaryColor,
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, height: 64, color: imageColor),
            const SizedBox(height: 20),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                text,
                style: StylesApp.styleBold20(context).copyWith(
                  color: textColor ?? Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
