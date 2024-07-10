import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_farm/Features/home/presentation/manager/home_cubit/default_plant_cubit.dart';
import 'package:smart_farm/Features/home/presentation/manager/home_cubit/default_plant_state.dart';
import 'package:smart_farm/Features/home/presentation/views/plant_view.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/utils/styles_app.dart';
import 'package:smart_farm/core/widgets/plant_card.dart';

class PlantsListView extends StatefulWidget {
  const PlantsListView({super.key});

  @override
  State<PlantsListView> createState() => _PlantsListViewState();
}

class _PlantsListViewState extends State<PlantsListView> {


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DefaultPlantCubit, DefaultPlantState>(
      builder: (context, state) {
        if (state is DefaultPlantSuccess) {
          return Padding(
            padding:
                const EdgeInsets.only(right: 12.0, left: 18.0, bottom: 32.0),
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
          return Container(
            margin: const EdgeInsets.only(bottom: 30),
            padding: const EdgeInsets.only(top: 12),
            decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(64))),
            child: Column(
              children: [
                Container(
                  color: kPrimaryColor,
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 24),
                  child: const SizedBox(
                    height: 20,
                  ),
                ),
                Center(
                  child: Text(state.errMessage ?? 'No Plants to Show !',
                      style: StylesApp.styleBold20(context)),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          );
        } else {
          return Padding(
            padding:
                const EdgeInsets.only(right: 12.0, left: 18.0, bottom: 32.0),
            child: SizedBox(
              height: 110,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  height: 110,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.greenAccent
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
