import 'package:flutter/material.dart';
import 'package:smart_farm/core/widgets/manual_control_card.dart';

class ManualControlView extends StatelessWidget{
  const ManualControlView({super.key});
  static String id='ManualControlView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          ManualControlCard(
            icon: Icons.water_drop_outlined,
            iconColor: Colors.blue,
            title: 'Water',
            status: 'Open',
            onPressed: () {

            },
          ),
          const SizedBox(height: 20),
          ManualControlCard(
            icon: Icons.roofing,
            iconColor: Colors.brown,
            title: 'Roof',
            status: 'Close',
            onPressed: () {

            },
          ),
          const SizedBox(height: 40,)
        ],
      ),
    );
  }
}