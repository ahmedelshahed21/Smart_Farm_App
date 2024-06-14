import 'package:flutter/material.dart';

class BackIconButton extends StatelessWidget {
  const BackIconButton({super.key,});
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      iconSize: 20,
      icon: const Center(
        child: Icon(Icons.arrow_back_ios,),
      ),
    );
  }
}