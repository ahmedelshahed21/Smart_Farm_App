import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/utils/styles_app.dart';
import 'package:smart_farm/core/widgets/custom_text_button.dart';

class ManualControlCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String status;
  final void Function() onPressed;

  const ManualControlCard({
    super.key, required this.icon, required this.iconColor, required this.title,required this.onPressed, required this.status,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 16.0),
      decoration: BoxDecoration(
          color: kItemColor,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        children: [
          Icon(icon,
            color: iconColor,
            size: 32,
          ),
          const SizedBox(width: 5),
          Text(title,
              style: StylesApp.styleRegular25(context).copyWith()
          ),
          const Spacer(),
          SizedBox(
            height: 50,
            width: 120,
            child: CustomTextButton(
              onPressed: onPressed,
              child: status,
              fontSize: 25,
              backgroundColor: Colors.black,
              textColor: Colors.white,
              letterSpacing: 5,
              borderRadius: BorderRadius.circular(12),
              //backgroundColor: kItemColor,
            ),
          )
        ],
      ),
    );
  }
}