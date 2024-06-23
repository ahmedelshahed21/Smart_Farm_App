import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_farm/Features/home/presentation/manager/home_cubit/default_plant_cubit.dart';
import 'package:smart_farm/Features/home/presentation/manager/home_cubit/default_plant_state.dart';
import 'package:smart_farm/Features/home/presentation/views/plant_view.dart';
import 'package:smart_farm/core/widgets/plant_card.dart';

class PlantsListView extends StatefulWidget {
  const PlantsListView({super.key});

  @override
  State<PlantsListView> createState() => _PlantsListViewState();
}

class _PlantsListViewState extends State<PlantsListView> {
  // final List<PlantModel> categories = const [
  //   PlantModel(
  //     image: 'assets/images/Wheat.jpeg',
  //     plantName: 'Wheat',
  //     content: 'It is a crucial food crop globally.\nRich in nutrients, including carbohydrates and proteins.\nCultivated in diverse climates worldwide.',
  //     water: 25,
  //     temp: 20,
  //     humidity: 60,
  //     soilHumidity: 70,
  //   ),
  //   PlantModel(
  //     image: 'assets/images/Rice.jpg',
  //     plantName: 'Rice',
  //     content: 'It is a staple food for billions worldwide.\nThrives in flooded paddies or upland areas.\nProvides essential carbohydrates and nutrients.',
  //     water: 25,
  //     temp: 28,
  //     humidity: 80,
  //     soilHumidity: 85,
  //   ),
  //   PlantModel(
  //     image: 'assets/images/Cotton.png',
  //     plantName: 'Cotton',
  //     content: 'It is a versatile fiber with diverse applications.\nGrown in warm climates for its soft and breathable fabric.',
  //     water: 30,
  //     temp: 32,
  //     humidity: 65,
  //     soilHumidity: 75,
  //   ),
  //   PlantModel(
  //     image: 'assets/images/Corn.webp',
  //     plantName: 'Corn',
  //     content: 'Corn, a staple crop in many cultures worldwide.\nThrives in warm climates, cultivated for its versatile uses.\nProvides food, animal feed.',
  //     water: 32,
  //     temp: 27,
  //     humidity: 70,
  //     soilHumidity: 80,
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DefaultPlantCubit, DefaultPlantState>(
      builder: (context, state) {
        if (state is DefaultPlantSuccess) {
          return Padding(
            padding: const EdgeInsets.only(right: 12.0, left: 18.0, bottom: 32.0),
            child: SizedBox(
              height: 110,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.plants.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return PlantView(category: state.plants[index]);
                        },
                      ),
                    );
                  },
                  child: PlantCard(category: state.plants[index]),
                ),
              ),
            ),
          );
        } else if (state is DefaultPlantFailure) {
          return Text(state.errMessage ?? 'An unknown error occurred');
        } else {
          return Padding(
            padding: const EdgeInsets.only(right: 12.0, left: 18.0, bottom: 32.0),
            child: SizedBox(
              height: 110,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  height: 110,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.brown
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
