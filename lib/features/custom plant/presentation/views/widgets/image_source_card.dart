import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/utils/styles_app.dart';

class ImageSourceCard extends StatelessWidget {
  const ImageSourceCard(
      {super.key,
      required this.icon,
      required this.iconColor,
      required this.onPressed,
      required this.name});

  final void Function() onPressed;
  final IconData icon;
  final Color iconColor;
  final String name;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: kItemColor, borderRadius: BorderRadius.circular(16)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(icon),
            iconSize: 55,
            color: iconColor,
            onPressed: onPressed,
          ),
          Text(name,
              style: StylesApp.styleBold16(context)
                  .copyWith(color: Colors.white38, letterSpacing: 3)),
        ],
      ),
    );
  }
}
