import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/utils/functions/custom_snack_bar.dart';
import 'package:smart_farm/core/utils/functions/underline_input_border.dart';
import 'package:smart_farm/core/utils/styles_app.dart';
import 'package:smart_farm/core/widgets/custom_icon.dart';
import 'package:smart_farm/core/widgets/custom_text_form_field.dart';
import 'package:smart_farm/features/custom%20plant/presentation/views/widgets/plant_image.dart';

class CustomPlantFormView extends StatelessWidget{
  const CustomPlantFormView({super.key});
  static String id='CustomPlantFormView';
  static final GlobalKey<FormState> formKey= GlobalKey();

  @override
  Widget build(BuildContext context) {

    var plantNameController = TextEditingController();
    var wateringController = TextEditingController();
    var tempertureController = TextEditingController();
    var humadityController = TextEditingController();
    var soilHumidityController = TextEditingController();
    var notesController = TextEditingController();

    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Form(
                key: formKey,
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: CustomIcon(
                            containerHeight: 45,
                            containerWidth: 45,
                            iconSize: 30,
                            icon: Icons.close,
                            backgroundColor: Colors.transparent,
                            radius: 16,
                            onPressed: (){
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: CustomIcon(
                            containerHeight: 45,
                            containerWidth: 45,
                            iconSize: 30,
                            icon: Icons.check,
                            backgroundColor: kItemColor,
                            radius: 16,
                            onPressed: (){
                              if(formKey.currentState!.validate()){
                                Navigator.pop(context);
                              }
                              else{
                                customSnackBar(context,' Invalid Values');
                              }
                            },
                          ),
                        )
                      ],
                    ),
                    const PlantImage(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextFormField(
                        validator: (data){
                          if(data!.isEmpty){
                            return 'Plant Name is required';
                          }
                          return null;
                        },
                        maxLength: 24,
                        cursorColor: kPrimaryColor.withOpacity(0.6),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          counterText: '',
                          prefixIcon:const Icon(Icons.title),
                          prefixIconColor: Colors.white,
                          hintText: 'Plant Name',
                          hintStyle: StylesApp.styleBold16(context).copyWith(
                            fontWeight: FontWeight.w500
                          ),
                          enabledBorder: buildUnderlineInputBorder(color: kPrimaryColor.withOpacity(0.6)),
                          focusedBorder: buildUnderlineInputBorder(color: kPrimaryColor.withOpacity(0.6)),
                          errorBorder: buildUnderlineInputBorder(color: Colors.red),
                          focusedErrorBorder: buildUnderlineInputBorder(color: Colors.red),
                        ),
                        controller: plantNameController,
                      ),
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height*0.04),
                    CustomTextFormField(
                        prefixIcon: Icons.water_drop_outlined,
                        prefixIconColor: Colors.blue,
                        labelText: 'Watering',
                        hintText: 'How much water do this plant need ?',
                        maxLength: 4,
                        textInputType: TextInputType.number,
                          controller: wateringController,
                    ),
                    CustomTextFormField(
                        prefixIcon: Icons.sunny_snowing,
                        prefixIconColor: Colors.orangeAccent,
                        labelText: 'Temperature',
                        hintText: '',
                        maxLength: 4,
                        textInputType: TextInputType.number,
                        controller: tempertureController,
                    ),
                    CustomTextFormField(
                        prefixIcon: Icons.water,
                        prefixIconColor: Colors.blueAccent,
                        labelText: 'Humidity',
                        hintText: '',
                        maxLength: 4,
                        textInputType: TextInputType.number,
                        controller: humadityController,
                    ),
                    CustomTextFormField(
                        prefixIcon: Icons.water,
                        prefixIconColor: Colors.brown,
                        labelText: 'Soil Humidity',
                        hintText: '',
                        maxLength: 4,
                        textInputType: TextInputType.number,
                        controller: soilHumidityController,
                    ),
                  ],
                ),
                ),
                CustomTextFormField(
                  prefixIcon: Icons.notes,
                  prefixIconColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(vertical: 16.0,horizontal: 16),
                  labelText: 'Notes',
                  hintText: 'Write any information you want to remember about your plant\n',
                  maxLines: 4,
                  maxLength: 200,
                  textInputType: TextInputType.multiline,
                  controller: notesController,
                ),
              ],
            ),
          ),
        ),
    );
  }
}

