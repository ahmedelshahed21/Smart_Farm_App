import 'package:flutter/material.dart';
import 'package:smart_farm/components/circular_percent.dart';

class PercentagesScreen extends StatelessWidget{
  const PercentagesScreen({super.key});
  static String id='PercentagesScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CircularPercent(name:'Water',percentage: 0.6, progressColor: Colors.blue),
              CircularPercent(name:'Temperature',percentage: 0.27, progressColor: Colors.yellow.shade500,measruingUnit: 'C'),
            ],
          ),
          const CircularPercent(name:'Humidity',percentage: 0.65, progressColor: Colors.cyan),
          const CircularPercent(name:'Soil Humidity',percentage: 0.7, progressColor: Colors.brown),
        ],
      ),

    );
  }
}