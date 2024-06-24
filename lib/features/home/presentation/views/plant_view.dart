import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:smart_farm/Features/home/data/models/default_plant_model.dart';
import 'package:smart_farm/Features/home/presentation/manager/send_data_cubit/send_plant_data_cubit.dart';
import 'package:smart_farm/Features/home/presentation/manager/send_data_cubit/send_plant_data_state.dart';
import 'package:smart_farm/Features/home/presentation/views/home_view.dart';
import 'package:smart_farm/Features/home/presentation/views/widgets/plant_data_section.dart';
import 'package:smart_farm/Features/manual%20control/presentation/views/manual_control_view.dart';
import 'package:smart_farm/Features/sensors/presentation/views/sensors_view.dart';
import 'package:smart_farm/core/utils/functions/custom_snack_bar.dart';
import 'package:smart_farm/core/widgets/custom_expansion_tile.dart';
import 'package:smart_farm/core/widgets/plant_action.dart';
import 'package:smart_farm/core/widgets/plant_card.dart';

class PlantView extends StatefulWidget{
  static String id='PlantView';
  const PlantView({super.key, required this.category});
  final DefaultPlantModel category;

  @override
  State<PlantView> createState() => _PlantViewState();
}

class _PlantViewState extends State<PlantView> {
  bool isLoading=false;
  @override
  Widget build(BuildContext context) {
    return isSystemAuto ? BlocConsumer<SendPlantDataCubit,SendPlantDataState>(
            listener: (context,state){
              if(state is SendPlantDataLoadingState){
                isLoading=true;
              }
              else if(state is SendPlantDataSuccess){
                isLoading=false;
                Navigator.pushNamed(context, SensorsView.id);
              }
              else{
                customSnackBar(context,'Data did\'t Send');
                isLoading=false;
              }
            },
          builder: (context,state)=> ModalProgressHUD(
            inAsyncCall: isLoading,
            child: Scaffold(
              appBar: AppBar(
                  actions: [
                    PlantCard(
                        category: widget.category,
                        width: 80,
                        height: 50,
                        radius: 12.0,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        padding: const EdgeInsets.only(top: 2.0,left: 7.0)),
                  ]
              ),
              body: Padding(
                padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.07),
                child: Column(
                  children: [
                    const Expanded(child: SizedBox()),
                    CustomExpansionTile(
                      title: 'OverView',
                      content: widget.category.content,
                    ),
                    const Expanded(child: SizedBox()),
                    PlantDataSection(
                        water: widget.category.water,
                        temp: widget.category.temp,
                        humidity: widget.category.humidity,
                        soilHumidity: widget.category.soilHumidity
                    ),
                    const Expanded(child: SizedBox()),
                    PlantAction(
                      onPressedCustomizeButton: (){
                        if(isSystemAuto==false){
                          Navigator.pushNamed(context, ManualControlView.id);
                        }
                        else{
                          customSnackBar(context,' You can\'t Control In Auto Mode');
                        }
                      },
                      onPressedSensorReadings: (){
                        BlocProvider.of<SendPlantDataCubit>(context).sendPlantData(
                          widget.category.soilHumidity.toString(),
                          widget.category.temp.toString(),
                          widget.category.humidity.toString(),
                        );
                      },
                    ),
                    const Expanded(child: SizedBox()),
                  ],
                ),
              ),
            ),
          ),
        ) : Scaffold(
      appBar: AppBar(
          actions: [
            PlantCard(
                category: widget.category,
                width: 80,
                height: 50,
                radius: 12.0,
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                padding: const EdgeInsets.only(top: 2.0,left: 7.0)),
          ]
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.07),
        child: Column(
          children: [
            const Expanded(child: SizedBox()),
            CustomExpansionTile(
              title: 'OverView',
              content: widget.category.content,
            ),
            const Expanded(child: SizedBox()),
            PlantDataSection(
                water: widget.category.water,
                temp: widget.category.temp,
                humidity: widget.category.humidity,
                soilHumidity: widget.category.soilHumidity
            ),
            const Expanded(child: SizedBox()),
            PlantAction(
              onPressedCustomizeButton: (){
                if(isSystemAuto==false){
                  Navigator.pushNamed(context, ManualControlView.id);
                }
                else{
                  customSnackBar(context,' You can\'t Control In Auto Mode');
                }
              },
              onPressedSensorReadings: (){
                Navigator.pushNamed(context, SensorsView.id);
              },
            ),
            const Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}








