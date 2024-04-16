import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/widgets//plant_action.dart';
import 'package:smart_farm/core/utils/assets_app.dart';
import 'package:smart_farm/features/home/data/models/plant_model.dart';

class PlantDataView extends StatelessWidget{
  const PlantDataView({super.key, required this.category});
  final PlantModel category;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Wheat'),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon:const Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(right: 8.0,left: 8.0,top: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black
                  ),
                  child: ExpansionTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    collapsedIconColor: kPrimaryColor,
                    iconColor: Colors.red,
                    collapsedTextColor: kPrimaryColor,
                    collapsedBackgroundColor: kItemColor,
                    backgroundColor: kItemColor,
                    tilePadding: const EdgeInsets.only(left: 0.0),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(ImagesApp.wheatImage,
                        height: 40,
                      ),
                    ),
                    title: const Text('OverView',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    textColor: Colors.red,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 12.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: kItemColor
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
                    ],
                    onExpansionChanged: (bool expanded) {},
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [

                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 25.0,horizontal: 20.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black.withOpacity(0.4)
                          ),
                          child: Column(
                            children: [
                              const Row(
                                children: [
                                  Icon(Icons.water_drop_outlined,
                                    size: 24,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(width: 5),
                                  Text('Watering',
                                    style: TextStyle(
                                        fontSize: 18,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  const Text('25',
                                    style: TextStyle(
                                        fontSize: 40,
                                        letterSpacing: 2,
                                        color: kPrimaryColor,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  const SizedBox(width: 5,),
                                  Text('L',
                                    style: TextStyle(
                                        fontSize: 18,
                                        letterSpacing: 2,
                                        color: Colors.white.withOpacity(0.6),
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 25.0,horizontal: 20.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black.withOpacity(0.4)
                          ),
                          child: Column(
                            children: [
                              const Row(
                                children: [
                                  Icon(Icons.water,
                                    size: 24,
                                    color: Colors.white70,
                                  ),
                                  SizedBox(width: 5),
                                  Text('Humidity',
                                    style: TextStyle(
                                        fontSize: 18,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  const Text('25',
                                    style: TextStyle(
                                        fontSize: 40,
                                        letterSpacing: 2,
                                        color: kPrimaryColor,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  const SizedBox(width: 5,),
                                  Text('%',
                                    style: TextStyle(
                                        fontSize: 18,
                                        letterSpacing: 2,
                                        color: Colors.white.withOpacity(0.6),
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 5,),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 25.0,horizontal: 20.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black.withOpacity(0.4)
                          ),
                          child: Column(
                            children: [
                              const Row(
                                children: [
                                  Icon(Icons.sunny_snowing,
                                    size: 24,
                                    color: Colors.orangeAccent,
                                  ),
                                  SizedBox(width: 5),
                                  Text('Temperature',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  const Text('25',
                                    style: TextStyle(
                                        fontSize: 40,
                                        letterSpacing: 2,
                                        color: kPrimaryColor,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  const SizedBox(width: 5,),
                                  Text('C',
                                    style: TextStyle(
                                        fontSize: 18,
                                        letterSpacing: 2,
                                        color: Colors.white.withOpacity(0.6),
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 20,),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 25.0,horizontal: 20.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black.withOpacity(0.4)
                          ),
                          child: Column(
                            children: [
                              const Row(
                                children: [
                                  Icon(Icons.water,
                                    size: 24,
                                    color: Colors.brown,
                                  ),
                                  SizedBox(width: 5),
                                  Text('Soil Humidity',
                                    style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  const Text('25',
                                    style: TextStyle(
                                        fontSize: 40,
                                        letterSpacing: 2,
                                        color: kPrimaryColor,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  const SizedBox(width: 5,),
                                  Text('%',
                                    style: TextStyle(
                                        fontSize: 18,
                                        letterSpacing: 2,
                                        color: Colors.white.withOpacity(0.6),
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                const PlantAction(),
              ],
            ),
          ),
        ),
      ),
    );
  }

}