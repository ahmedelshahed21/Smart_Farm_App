import 'package:flutter/material.dart';
import 'package:smart_farm/components/custom_button2.dart';
import 'package:smart_farm/core/components/custom_button1.dart';
import 'package:smart_farm/components/custom_containar2.dart';
import 'package:smart_farm/components/custom_container1.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/features/home/data/models/category_model.dart';
import 'package:smart_farm/screens/manual_control_screen.dart';
import 'package:smart_farm/screens/percentages_screen.dart';

class PlantView extends StatelessWidget{
  static String id='PlantScreen';
  const PlantView({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.transparent,
      appBar: AppBar(
        //backgroundColor: Colors.transparent,
        title: Text(category.categoryName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
        body: Container(
          padding: const EdgeInsets.only(top: 28,bottom: 28),
          margin: const EdgeInsets.only(top: 24,bottom: 24,right: 16,left: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: kPrimaryColor,
          ),
          child: Column(
            children: [
              CustomContainer1(
                icon: const Icon(Icons.water_drop_outlined,
                  size: 32,
                  color: Colors.blue,
                ),
                title: 'Watering',
                trailing: '0.5 L',
              ),
              CustomContainer1(
                icon: const Icon(Icons.sunny_snowing,
                  size: 32,
                  color: Colors.orangeAccent,
                ),
                title: 'Temperature',
                trailing: '11 C',
              ),
              CustomContainer2(image: 'assets/images/humidity-sensor.png',imageColor: Colors.green.shade700, title: 'Humidity', trailing: '0.5 L'),
              const CustomContainer2(image: 'assets/images/soil_humidity.png',imageColor: Colors.brown ,title: 'Soil Hum', trailing: '0.5'),

              Padding(
                padding: const EdgeInsets.only(top: 16,left: 150.0),
                child: CustomButton1(
                    buttonName: 'Next',
                    onTapped: (){
                      Navigator.pushNamed(context, PercentagesScreen.id);
                    }
                )
              ),
              const SizedBox(height: 50),
              CustomButton2(
                name: 'Manual Control',
                onTapped: () {
                  Navigator.pushNamed(context,ManualControlScreen.id);
                },
              ),
            ],
          ),
        ),
    );
  }
}