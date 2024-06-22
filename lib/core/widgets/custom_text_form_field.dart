import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/utils/functions/outline_input_border.dart';
import 'package:smart_farm/core/utils/styles_app.dart';


class CustomTextFormField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final bool? obscureText;
  final int? maxLength;
  final int? maxLines;
  final TextInputType? textInputType;
  final String? Function(String?)? validator;
  final IconData? suffixIcon;
  final void Function()? suffixOnPressed;
  final EdgeInsetsGeometry? contentPadding;
  final IconData? prefixIcon;
  final TextEditingController controller;
  final Color? prefixIconColor;

  const CustomTextFormField({super.key, this.labelText, required this.hintText, this.textInputType, this.validator,  this.suffixIcon, this.suffixOnPressed, this.obscureText, this.contentPadding, this.prefixIcon, this.prefixIconColor, this.maxLength, this.maxLines, required this.controller});

  String? validateMessage(){
  switch(labelText){
    case 'USER_NAME' : return 'USER_NAME'.toLowerCase();
    case 'PASSWORD' : return 'PASSWORD'.toLowerCase();
    case 'Watering' : return 'Watering';
    case 'Temperature' : return 'Temperature';
    case 'Humidity' : return 'Humidity';
    case 'Soil Humidity' : return 'Soil Humidity';
    }
    return 'Filed';
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: TextFormField(
        style: const TextStyle(color: Colors.white70),
        keyboardType: textInputType,
        obscureText: obscureText ?? false,
        cursorColor: kPrimaryColor.withOpacity(0.6),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator ?? (data) {
          if (data!.isEmpty) {
            return '${validateMessage()} is required';
          }
          return null;
        },
        maxLength: maxLength ?? 24,
        minLines: 1,
        maxLines: maxLines ?? 1,
        decoration: InputDecoration(
          counterText: '',
          prefixIcon: Icon(prefixIcon),
          prefixIconColor: prefixIconColor,
          contentPadding: contentPadding ?? EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.01,horizontal: MediaQuery.of(context).size.width*0.05),
          filled: true,
          fillColor: kSecondaryColor,
          suffixIcon: IconButton(
              icon: Icon(suffixIcon),
              onPressed: suffixOnPressed
          ),
          suffixIconColor: Colors.yellow.withOpacity(0.7),
          labelText: labelText,
          labelStyle: StylesApp.styleBold16(context),
          hintText: hintText,
          hintStyle: StylesApp.styleRegular12(context),
          enabledBorder: buildOutlineInputBorder(color: Colors.black),
          focusedBorder: buildOutlineInputBorder(color: Colors.black),
          errorBorder: buildOutlineInputBorder(color: Colors.red),
          focusedErrorBorder: buildOutlineInputBorder(color: Colors.red),
        ),
        controller: controller,
      ),
    );
  }
}

