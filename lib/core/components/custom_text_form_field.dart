import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';


class CustomTextFormField extends StatelessWidget{
  final String? labelText;
  final String? hintText;
  final bool? obscureText;
  final TextInputType? textInputType;
  final String? Function(String?)? validator;
  final Color? fillColor;
  final IconData? suffixIcon;
  final void Function()? suffixOnPressed;
  final EdgeInsetsGeometry? contentPadding;
  final IconData? prefixIcon;
  final Color? prefixIconColor;

  const CustomTextFormField({super.key,this.labelText,required this.hintText,this.textInputType,this.validator,this.fillColor,this.suffixIcon,this.suffixOnPressed,this.obscureText,this.contentPadding,this.prefixIcon,this.prefixIconColor});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10.0),
      child: TextFormField(
        style: const TextStyle(color: Colors.black),
        keyboardType: textInputType,
        obscureText: obscureText??false,
        cursorColor: kPrimaryColor.withOpacity(0.6),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator ?? (data){
          if(data!.isEmpty){
            return 'Field is required';
          }
          return null;
        },
        decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon),
          prefixIconColor: prefixIconColor,
          contentPadding: contentPadding,
          filled: true,
          fillColor: fillColor ?? kPrimaryColor,
          suffixIcon: IconButton(icon: Icon(suffixIcon),onPressed: suffixOnPressed),
          suffixIconColor: Colors.yellow.withOpacity(0.7),
          labelText: labelText,
          labelStyle: TextStyle(
                color: Colors.yellow.withOpacity(0.7),
               fontWeight: FontWeight.bold
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 12,
              color: Colors.black.withOpacity(0.6)
            ),

          enabledBorder:OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(16)
          ),
          focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(16)
            ),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: Colors.red,
                  width: 1,
              ),
              borderRadius: BorderRadius.circular(16),
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.red,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(16)
          ),
        ),
      ),
    );
  }
}