import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_farm/Features/custom%20plant/presentation/manager/custom_plant_data_cubit/custom_plant_data_cubit.dart';
import 'package:smart_farm/Features/custom%20plant/presentation/manager/custom_plant_data_cubit/custom_plant_state.dart';
import 'package:smart_farm/Features/custom%20plant/presentation/views/custom_plant_data_view.dart';
import 'package:smart_farm/Features/custom%20plant/presentation/views/custom_plant_form_view.dart';
import 'package:smart_farm/Features/custom%20plant/presentation/views/widgets/custom_item.dart';
import 'package:smart_farm/core/utils/styles_app.dart';
import 'package:smart_farm/core/widgets/custom_circle_progress_indicator.dart';

class CustomPlantsView extends StatefulWidget {
  const CustomPlantsView({super.key});
  static String id = 'CustomPlantsView';

  @override
  State<CustomPlantsView> createState() => _CustomPlantsViewState();
}

class _CustomPlantsViewState extends State<CustomPlantsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Custom Plant',
              style:
              StylesApp.styleBold20(context).copyWith(color: Colors.white)),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green.shade900,
          child: const Icon(Icons.add),
          onPressed: () {
            Navigator.pushNamed(context, CustomPlantFormView.id);
          },
        ),
        body: BlocBuilder<CustomPlantCubit, CustomPlantState>(
            builder: (context, state) {
              if (state is CustomPlantSuccess) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                  child: GridView.builder(
                      itemCount: state.customPlants.length,
                      clipBehavior: Clip.none,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.5,
                        // crossAxisSpacing: 10,
                        mainAxisSpacing: 75,
                      ),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          child: CustomItem(
                              customPlantName: state.customPlants[index].plantName,
                              customPlantImage: state.customPlants[index].image),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return CustomPlantDataView(
                                      category: state.customPlants[index]);
                                }));
                          },
                        );
                      }
                  ),
                );
              }
              else if(CustomPlantState is CustomPlantFailure){
                return Center(
                  child: Text('No Plants to Show !',
                      style: StylesApp.styleBold20(context)),
                );
              }
              else {
                return const Center(child: CustomCircularProgressIndicator());
              }
              })


    );
  }
}
