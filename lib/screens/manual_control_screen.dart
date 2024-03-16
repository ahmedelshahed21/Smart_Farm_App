import 'package:flutter/material.dart';
import 'package:smart_farm/components/circular_percent.dart';
import 'package:smart_farm/core/components/custom_icon.dart';

class ManualControlScreen extends StatefulWidget{

  static String id ='ManualControlScreen';
  const ManualControlScreen({super.key});

  @override
  State<ManualControlScreen> createState() => _ManualControlScreenState();
}

class _ManualControlScreenState extends State<ManualControlScreen> {
  @override
  Widget build(BuildContext context) {
    bool? ifPressed;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CircularPercent(name:'Water',percentage: 0.6,lineWidth: 5,radius: 35 ,progressColor: Colors.blue,nameFontSize: 20,percentageFontSize: 22,measruingUnitFontSize: 18),
                CircularPercent(name:'Temperature',percentage: 0.27,lineWidth: 5,radius: 35 ,progressColor: Colors.yellow.shade500,measruingUnit: 'C',nameFontSize: 20,percentageFontSize: 22,measruingUnitFontSize: 18),
              ],
            ),
            const CircularPercent(name:'Humidity',percentage: 0.65,lineWidth: 5,radius: 35 , progressColor: Colors.cyan,nameFontSize: 20,percentageFontSize: 22,measruingUnitFontSize: 18),
            const CircularPercent(name:'Soil Humidity',percentage: 0.7,lineWidth: 5,radius: 35 , progressColor: Colors.brown,nameFontSize: 20,percentageFontSize: 22,measruingUnitFontSize: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Water',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.blueAccent
                  ),
                ),
                CustomIcon(
                    icon: Icons.play_arrow,
                    backgroundColor: Colors.grey.withOpacity(0.1),
                    radius: 12,
                    onPressed:(){} ,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Roof',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                CustomIcon(
                    icon: ifPressed==true ? Icons.play_arrow : Icons.stop,
                    backgroundColor: Colors.grey.withOpacity(0.1),
                    radius: 12,
                    onPressed: (){
                      setState(() {
                        ifPressed=false;
                      });
                    },
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}