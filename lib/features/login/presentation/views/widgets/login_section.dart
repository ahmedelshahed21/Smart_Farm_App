import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/utils/functions/custom_snack_bar.dart';
import 'package:smart_farm/core/widgets/default_button.dart';
import 'package:smart_farm/core/widgets/custom_text_form_field.dart';
import 'package:smart_farm/features/home/presentation/views/home_view.dart';


class LoginSection extends StatefulWidget{
  const LoginSection({super.key});
  @override
  State<LoginSection> createState() => _LoginSectionState();
}

class _LoginSectionState extends State<LoginSection> {
  bool obscureText=true;
  static final GlobalKey<FormState> formKey=GlobalKey();
  @override
  Widget build(BuildContext context) {

    return Form(
      key: formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.02,vertical:5),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.02),
            CustomTextFormField(
              contentPadding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.02,horizontal: MediaQuery.of(context).size.width*0.05),
              labelText: 'USER_NAME',
              prefixIcon: Icons.alternate_email,
              prefixIconColor: Colors.black,
              textInputType: TextInputType.emailAddress,
              hintText: 'USER_NAME',
            ),
            //const SizedBox(height: 5),
            CustomTextFormField(
              contentPadding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.02,horizontal: MediaQuery.of(context).size.width*0.05),
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
              hintText: 'PASSWORD',
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.02),
            SizedBox(
              width: double.infinity,
              child: DefaultButton(
                  buttonName: 'LOGIN',
                  borderColor: kPrimaryColor.withOpacity(0.6),
                  onPressed: (){
                    if(formKey.currentState!.validate()){
                      Navigator.pushReplacementNamed(context, HomeView.id);
                    }
                    else{
                      customSnackBar(context,'  Invalid Values');
                    }
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}


















// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
// import 'package:smart_farm/constants.dart';
// import 'package:smart_farm/core/utils/functions/custom_snack_bar.dart';
// import 'package:smart_farm/core/widgets/default_button.dart';
// import 'package:smart_farm/core/widgets/custom_text_form_field.dart';
// import 'package:smart_farm/features/home/presentation/views/home_view.dart';
// import 'package:smart_farm/features/login/presentation/manager/login_cubit/login_cubit.dart';
// import 'package:smart_farm/features/login/presentation/manager/login_cubit/login_state.dart';
//
//
// class LoginSection extends StatefulWidget{
//   const LoginSection({super.key});
//
//   @override
//   State<LoginSection> createState() => _LoginSectionState();
// }
//
// class _LoginSectionState extends State<LoginSection> {
//   bool isLoading=false;
//   bool obscureText=true;
//   static final GlobalKey<FormState> formKey=GlobalKey();
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<LoginCubit,LoginState>(
//         listener: (context,state){
//           if(state is LoginLoadingState){
//             isLoading = true;
//           }
//           else if(state is LoginSuccess){
//             Navigator.pushReplacementNamed(context, HomeView.id);
//           }
//           else{
//             customSnackBar(context,'  Invalid Values');
//           }
//         },
//       builder:(context,state) => ModalProgressHUD(
//         inAsyncCall: isLoading,
//         child: Form(
//           key: formKey,
//           child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.02,vertical:5),
//           child: Column(
//             children: [
//               SizedBox(height: MediaQuery.of(context).size.height*0.02),
//               CustomTextFormField(
//                 contentPadding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.02,horizontal: MediaQuery.of(context).size.width*0.05),
//                 labelText: 'USER_NAME',
//                 prefixIcon: Icons.alternate_email,
//                 prefixIconColor: Colors.black,
//                 textInputType: TextInputType.emailAddress,
//                 hintText: 'USER_NAME',
//               ),
//               //const SizedBox(height: 5),
//               CustomTextFormField(
//                 contentPadding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.02,horizontal: MediaQuery.of(context).size.width*0.05),
//                 prefixIcon: Icons.lock_outline_rounded,
//                 prefixIconColor: Colors.black,
//                 labelText: 'PASSWORD',
//                 textInputType: TextInputType.emailAddress,
//                 obscureText: obscureText,
//                 suffixIcon: obscureText ? Icons.visibility_off : Icons.visibility,
//                 suffixOnPressed: (){
//                   setState(() {
//                     obscureText=!obscureText;
//                   });
//                 },
//                 hintText: 'PASSWORD',
//               ),
//               SizedBox(height: MediaQuery.of(context).size.height*0.02),
//               SizedBox(
//                 width: double.infinity,
//                 child: DefaultButton(
//                     buttonName: 'LOGIN',
//                     borderColor: kPrimaryColor.withOpacity(0.6),
//                     onPressed: (){
//                       if(formKey.currentState!.validate()){
//                         BlocProvider.of<LoginCubit>(context).loginUser();
//                       }
//                       else{}
//                     }
//                 ),
//               ),
//             ],
//           ),
//         ),
//         ),
//       )
//     );
//   }
// }