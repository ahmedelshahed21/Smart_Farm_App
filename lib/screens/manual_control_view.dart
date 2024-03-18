import 'package:flutter/material.dart';
import 'package:smart_farm/core/widgets/circular_percent.dart';
import 'package:smart_farm/core/widgets/custom_text_button.dart';

class ManualControlView extends StatefulWidget{

  static String id ='ManualControlView';
  const ManualControlView({super.key});

  @override
  State<ManualControlView> createState() => _ManualControlViewState();
}

class _ManualControlViewState extends State<ManualControlView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                    letterSpacing: 3,
                    color: Colors.blueAccent
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width*0.22,
                  child: CustomTextButton(
                    child: 'Open',
                    borderRadius: BorderRadius.circular(16),
                    onPressed: (){},
                  ),
                )
                // CustomIcon(
                //     icon: Icons.play_arrow,
                //     radius: 12,
                //     onPressed:(){} ,
                // ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Roof',
                  style: TextStyle(
                    fontSize: 30,
                    letterSpacing: 3
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.22,
                  height: 60,
                  child: CustomTextButton(
                    child: 'Open',
                    borderRadius: BorderRadius.circular(16),
                    onPressed: (){},
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}