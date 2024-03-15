import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';

class PlantDataSection extends StatelessWidget {
  const PlantDataSection({super.key, this.water,this.temp,this.humidity,this.soilHumidity,});
  final double? water;
  final double? temp;
  final double? humidity;
  final double? soilHumidity;
  @override
  Widget build(BuildContext context) {
    return Row(
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
                      Text('${water ?? 25 }',
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
                  Text('every day',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                    ),
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
                      Text('25',
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
                            fontSize: 14,
                            letterSpacing: 2,
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
                      Text('25',
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
                      Text('25',
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
    );
  }
}