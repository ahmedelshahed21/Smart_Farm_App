import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/utils/functions/custom_snack_bar.dart';
import 'package:smart_farm/core/utils/functions/underline_input_border.dart';
import 'package:smart_farm/core/widgets/custom_icon.dart';
import 'package:smart_farm/core/widgets/custom_text_form_field.dart';

class BodyCustomPlantFormView extends StatelessWidget{
  const BodyCustomPlantFormView({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey=GlobalKey();
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
              CircleAvatar(
                radius: 64,
                backgroundColor: kPrimaryColor.withOpacity(0.6),
                child: CustomIcon(
                  icon: Icons.camera_alt_outlined,
                  radius: 6,
                  backgroundColor: Colors.transparent,
                  onPressed: (){
                  },
                )
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: TextFormField(
                  validator: (data){
                    if(data!.isEmpty){
                      return 'Plant Name is required';
                    }
                    return null;
                  },
                  cursorColor: kPrimaryColor.withOpacity(0.6),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    prefixIcon:const Icon(Icons.title),
                    prefixIconColor: Colors.white,
                    hintText: 'Plant Name',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: Colors.yellow.withOpacity(0.7)
                    ),
                    enabledBorder: buildUnderlineInputBorder(color: kPrimaryColor.withOpacity(0.6)),
                    focusedBorder: buildUnderlineInputBorder(color: kPrimaryColor.withOpacity(0.6)),
                    errorBorder: buildUnderlineInputBorder(color: Colors.red),
                    focusedErrorBorder: buildUnderlineInputBorder(color: Colors.red),
                  ),
                ),
              ),

              const SizedBox(height: 30),
              const CustomTextFormField(
                  prefixIcon: Icons.water_drop_outlined,
                  prefixIconColor: Colors.blue,
                  labelText: 'Watering',
                  hintText: 'How much water do this plant need ?',
                  textInputType: TextInputType.number,
                  contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 20)
              ),
              const CustomTextFormField(
                  prefixIcon: Icons.sunny_snowing,
                  labelText: 'Temperature',
                  prefixIconColor: Colors.orangeAccent,
                  hintText: '',
                  textInputType: TextInputType.number,
                  contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 20)
              ),
              CustomTextFormField(
                  prefixIcon: Icons.water,labelText: 'Humidity',
                  prefixIconColor: kPrimaryColor,
                  hintText: '',textInputType: TextInputType.number,
                  contentPadding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20)
              ),
              const CustomTextFormField(
                  prefixIcon: Icons.water,
                  prefixIconColor: Colors.brown,
                  labelText: 'Soil Humidity',
                  hintText: '',textInputType: TextInputType.number,
                  contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 20)
              ),
            ],
          ),
        ),
      ),
    );
  }


}