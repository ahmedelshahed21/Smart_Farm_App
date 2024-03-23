import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/utils/functions/outline_input_border.dart';


class CustomTextFormField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final bool? obscureText;
  final int? maxLength;
  final TextInputType? textInputType;
  final String? Function(String?)? validator;
  final IconData? suffixIcon;
  final void Function()? suffixOnPressed;
  final EdgeInsetsGeometry? contentPadding;
  final IconData? prefixIcon;
  final Color? prefixIconColor;

  const CustomTextFormField({super.key, this.labelText, required this.hintText, this.textInputType, this.validator,  this.suffixIcon, this.suffixOnPressed, this.obscureText, this.contentPadding, this.prefixIcon, this.prefixIconColor, this.maxLength});

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
        decoration: InputDecoration(
          counterText: '',
          prefixIcon: Icon(prefixIcon),
          prefixIconColor: prefixIconColor,
          contentPadding: contentPadding,
          filled: true,
          fillColor: kTextFiledColor,
          suffixIcon: IconButton(
              icon: Icon(suffixIcon),
              onPressed: suffixOnPressed
          ),
          suffixIconColor: Colors.yellow.withOpacity(0.7),
          labelText: labelText,
          labelStyle: TextStyle(
              color: Colors.yellow.withOpacity(0.7),
              fontWeight: FontWeight.bold
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
              fontSize: 12,
              color: Colors.white70
          ),
          enabledBorder: buildOutlineInputBorder(color: Colors.black),
          focusedBorder: buildOutlineInputBorder(color: Colors.black),
          errorBorder: buildOutlineInputBorder(color: Colors.red),
          focusedErrorBorder: buildOutlineInputBorder(color: Colors.red),
        ),
      ),
    );
  }
}

