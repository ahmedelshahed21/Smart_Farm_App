import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/widgets/circular_percent.dart';
import 'package:smart_farm/core/widgets/custom_text_button.dart';
import 'package:smart_farm/core/widgets/manual_control_card.dart';


class PercentagesView extends StatelessWidget{
  const PercentagesView({super.key});
  static String id='PercentagesView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          CustomTextButton(
            child: 'Manual Control',
            onPressed: (){
              buildManualControlBottomSheet(context);
            },
            borderRadius: BorderRadius.circular(12),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(height: 80,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircularPercent(
                  name:'Humidity',percentage: 0.65,
                  progressColor: Colors.cyan
              ),
              CircularPercent(
                  name:'Soil Humidity',percentage: 0.7,
                  progressColor: Colors.brown
              ),

            ],
          ),
          const SizedBox(height: 50,),
          CircularPercent(
              name:'Temperature',
              percentage: 0.27,
              progressColor: Colors.yellow.shade500,
              measruingUnit: 'C'
          ),
        ],
      ),

    );
  }

  Future<dynamic> buildManualControlBottomSheet(BuildContext context) {
    return showModalBottomSheet(
                backgroundColor: kBottomSheetColor,
                context: context,
                builder: (context){
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(height: 40),
                      ManualControlCard(
                        icon: Icons.water_drop_outlined,
                        iconColor: Colors.blue,
                        title: 'Water',
                        status: 'Open',
                        onPressed: (){

                        },
                      ),

                      const SizedBox(height: 20),
                      ManualControlCard(
                        icon: Icons.roofing,
                        iconColor: Colors.brown,
                        title: 'Roof',
                        status: 'Close',
                        onPressed: (){

                        },
                      ),
                      const SizedBox(height: 40,)
                    ],
                  );
                }
            );
  }
}

