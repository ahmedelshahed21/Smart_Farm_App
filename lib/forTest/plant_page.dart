// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class plantPage extends StatelessWidget{
  const plantPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 450,
        padding: const EdgeInsets.only(top: 32,bottom: 32),
    margin: const EdgeInsets.only(top: 48,bottom: 48,right: 16,left: 16),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(32),
    color: Colors.green.shade400,
    ),
    child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(12)
            ),
            padding: const EdgeInsets.only(top:16,bottom:16,right: 16,left: 8),
            height: 75,
            child: Row(
              children: [
                const Icon(Icons.water_drop_outlined,color: Colors.blue,size: 32,),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0,right: 164),
                  child: Text('Water'),
                ),
                const Text('0.5 L',
                  style: TextStyle(),
                ),
                SizedBox(
                    height: 70,
                    child: GestureDetector(
                        onTap: (){},
                        child: Lottie.asset('assets/animations/Wi-Fi.json'))
                ),
                const Text('Connect it to Wi-Fi !'),
              ],
            ),
          ),
        ],
      )
    );
  }


}