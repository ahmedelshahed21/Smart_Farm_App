import 'package:flutter/material.dart';
import 'package:smart_farm/features/home/presentation/views/widgets/plants_listview.dart';
import 'package:smart_farm/constants.dart';

class CustomHorizontalListView extends StatelessWidget{
  const CustomHorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: kPrimaryColor,
          width: double.infinity,
          padding: const EdgeInsets.only(left: 18),
          child: const Text('Plants',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          padding:const EdgeInsets.only(top: 12) ,
          decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: const BorderRadius.only(bottomLeft:Radius.circular(64))
          ),
          child: const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: PlantsListView(),
          ),
        ),
      ],
    );
  }



}