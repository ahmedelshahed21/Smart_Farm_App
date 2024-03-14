import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';

class CustomItem extends StatelessWidget{
  const CustomItem({super.key});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){

      },
      child: Container(
        padding: const EdgeInsets.only(right: 10.0,left: 10.0,top: 10.0),
        margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        decoration: BoxDecoration(
          color: kPrimaryColor.withOpacity(0.8),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Watermelon',
              style: TextStyle(
                fontSize: 18,
                overflow: TextOverflow.visible,
                fontWeight: FontWeight.w500
              ),
            ),
            SizedBox(height:10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.delete,
                  color: Colors.black,
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}