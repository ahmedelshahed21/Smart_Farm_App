import 'package:flutter/material.dart';
import 'package:smart_farm/core/components/custom_text_form_field.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/utils/functions/custom_snack_bar.dart';
import '../../../../../core/components/custom_icon.dart';

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
                      //backgroundColor: Colors.grey.withOpacity(0.1),
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
                      backgroundColor: Colors.grey.withOpacity(0.2),
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
                backgroundColor: kPrimaryColor.withOpacity(0.5),
                child: CustomIcon(
                  icon: Icons.camera_alt_outlined,
                  radius: 6,
                  backgroundColor: Colors.transparent,
                  onPressed: (){
                  },
                )
              ),
              TextFormField(
                validator: (data){
                  if(data!.isEmpty){
                    return 'Field is required';
                  }
                  return null;
                },
                cursorColor: kPrimaryColor.withOpacity(0.6),
                decoration: InputDecoration(
                  prefixIcon:const Icon(Icons.title),
                  prefixIconColor: kPrimaryColor.withOpacity(0.6),
                  hintText: 'Plant Name',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Colors.yellow.withOpacity(0.7)
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: kPrimaryColor.withOpacity(0.6)
                    )
                  ),
                  focusedBorder: UnderlineInputBorder(
                       borderSide: BorderSide(
                         width: 2,
                        color: kPrimaryColor.withOpacity(0.6)
                    )
                  ),
                  errorBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: Colors.red
                      )
                  ),
                  focusedErrorBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: Colors.red
                      )
                  ),
                ),
              ),

              const SizedBox(height: 30),
              CustomTextFormField(
                  prefixIcon: Icons.water_drop_outlined,
                  prefixIconColor: Colors.blue,
                  labelText: 'Watering',
                  hintText: 'How much water do this plant need ?',
                  textInputType: TextInputType.number,
                  fillColor: Colors.green.withOpacity(0.3),
                  contentPadding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20)
              ),
              CustomTextFormField(
                  prefixIcon: Icons.sunny_snowing,
                  labelText: 'Temperature',
                  prefixIconColor: Colors.orangeAccent,
                  hintText: '',
                  textInputType: TextInputType.number,
                  fillColor: kPrimaryColor.withOpacity(0.3),
                  contentPadding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20)
              ),
              CustomTextFormField(
                  prefixIcon: Icons.water,labelText: 'Humidity',
                  prefixIconColor: kPrimaryColor,
                  hintText: '',textInputType: TextInputType.number,
                  fillColor: kPrimaryColor.withOpacity(0.3),
                  contentPadding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20)
              ),
              CustomTextFormField(
                  prefixIcon: Icons.water,
                  prefixIconColor: Colors.brown[300],
                  labelText: 'Soil Humidity',
                  hintText: '',textInputType: TextInputType.number,
                  fillColor: kPrimaryColor.withOpacity(0.3),
                  contentPadding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20)
              ),
            ],
          ),
        ),
      ),
    );
  }
}