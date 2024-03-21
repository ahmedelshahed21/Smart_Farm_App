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
          margin: const EdgeInsets.only(bottom: 30),
          padding:const EdgeInsets.only(top: 12) ,
          decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(bottomLeft:Radius.circular(64))
          ),
          child: Column(
            children: [
              Container(
                color: kPrimaryColor,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 24),
                child: const Text('Plants',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const SizedBox(height: 5,),
              const PlantsListView(),
            ],
          ),
        ),
      ],
    );
  }



}