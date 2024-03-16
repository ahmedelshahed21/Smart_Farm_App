import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/components/custom_button1.dart';
import 'package:smart_farm/core/components/custom_text_form_field.dart';
import 'package:smart_farm/core/utils/functions/custom_snack_bar.dart';
import 'package:smart_farm/features/home/presentation/views/home_view.dart';


class LoginSection extends StatefulWidget{
  const LoginSection({super.key});

  @override
  State<LoginSection> createState() => _LoginSectionState();
}

class _LoginSectionState extends State<LoginSection> {
  bool obscureText=true;
  GlobalKey<FormState> formKey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: formKey,
      child: Column(
        children: [
          const Row(
            children: [
              Text('LOGIN',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          CustomTextFormField(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            labelText: 'USER_NAME',
            prefixIcon: Icons.alternate_email,
            prefixIconColor: Colors.black,
            fillColor: kPrimaryColor.withOpacity(0.3),
            textInputType: TextInputType.emailAddress,
            hintText: 'USER_NAME',
          ),
          CustomTextFormField(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            prefixIcon: Icons.lock_outline_rounded,
            prefixIconColor: Colors.black,
            labelText: 'PASSWORD',
            textInputType: TextInputType.emailAddress,
            obscureText: obscureText,
            suffixIcon: obscureText ? Icons.visibility_off : Icons.visibility,
            suffixOnPressed: (){
              setState(() {
                obscureText=!obscureText;
              });
            },
            fillColor: kPrimaryColor.withOpacity(0.3),
            hintText: 'PASSWORD',
          ),
          const SizedBox(height: 40,),
          SizedBox(
            width: double.infinity,
            child: CustomButton1(
                buttonName: 'LOGIN',
                borderColor: kPrimaryColor.withOpacity(0.6),
                onTapped: (){
                  if(formKey.currentState!.validate()){
                    Navigator.pushReplacementNamed(context, HomeView.id);
                  }
                  else{
                    customSnackBar(context,'  Invalid Values');
                  }
                }
            ),
          )

        ],
      ),
    );
  }
}