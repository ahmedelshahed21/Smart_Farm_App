import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/components/custom_button1.dart';
import 'package:smart_farm/core/components/plant_action.dart';
import 'package:smart_farm/core/utils/assets_app.dart';

class PlantDataView extends StatelessWidget{
  const PlantDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 12.0,left: 16.0,top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 5),
                      IconButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios),
                      ),
                      const SizedBox(width: 10),
                      const Text('Wheat Plant',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(ImagesApp.wheatImage,
                      height: 60,
                    ),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 30),
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                    color: Colors.black.withOpacity(0.4)
                ),
                child: Text('It is a crucial food crop globally.'
                    '\nRich in nutrients, including carbohydrates and proteins. '
                    '\nCultivated in diverse climates worldwide.',
                  style: TextStyle(
                    fontSize: 16,
                    color: kPrimaryColor.withOpacity(0.6),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black.withOpacity(0.4)
                        ),
                        child: Column(
                          children: [
                            Text('Watering',
                              style: TextStyle(
                                height: 2,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor
                              ),
                            ),
                            const Text('25 L',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            Text('every day',
                              style: TextStyle(
                                color: kPrimaryColor.withOpacity(0.6),
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black.withOpacity(0.4)
                        ),
                        child: Column(
                          children: [
                            Text('Temperature',
                              style: TextStyle(
                                  height: 2,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kPrimaryColor
                              ),
                            ),
                            const Text('25 C',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black.withOpacity(0.4)
                        ),
                        child: Column(
                          children: [
                            Text('Humidity',
                              style: TextStyle(
                                  height: 2,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kPrimaryColor
                              ),
                            ),
                            const Text('25 L',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                            Text('every day',
                              style: TextStyle(
                                  color: kPrimaryColor.withOpacity(0.6),
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                            color: Colors.black.withOpacity(0.4)
                        ),
                        child: Column(
                          children: [
                            Text('Soil Humidity',
                              style: TextStyle(
                                  height: 2,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kPrimaryColor
                              ),
                            ),
                            const Text('25 C',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 40,),
              const PlantAction(),
              const SizedBox(height: 20,),
              Center(child: CustomButton1(buttonName: 'Read', onTapped: (){}))
            ],
          ),
        ),
      ),
    );
  }

}