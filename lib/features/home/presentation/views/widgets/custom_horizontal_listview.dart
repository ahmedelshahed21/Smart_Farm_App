import 'package:flutter/material.dart';
import 'package:smart_farm/Features/home/presentation/views/widgets/plants_listview.dart';
import 'package:smart_farm/core/utils/styles_app.dart';
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
                child: Text('Plants',
                  style: StylesApp.styleBold30(context).copyWith(color: Colors.white)
                ),
              ),
              const SizedBox(height: 20,),
              const PlantsListView(),
            ],
          ),
        ),
      ],
    );
  }



}