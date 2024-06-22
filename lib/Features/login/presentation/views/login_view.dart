import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:smart_farm/Features/home/presentation/views/home_view.dart';
import 'package:smart_farm/Features/login/presentation/manager/login_cubit/login_cubit.dart';
import 'package:smart_farm/Features/login/presentation/manager/login_cubit/login_state.dart';
import 'package:smart_farm/core/utils/functions/custom_snack_bar.dart';
import 'package:smart_farm/features/login/presentation/views/widgets/animations_section.dart';
import 'package:smart_farm/features/login/presentation/views/widgets/login_section.dart';



class LoginView extends StatefulWidget{
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isLoading=false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit,LoginState>(
        listener: (context,state){
      if(state is LoginLoadingState){
        isLoading=true;
      }
      else if(state is LoginSuccess){
        Navigator.pushReplacementNamed(context, HomeView.id);
        isLoading=false;
      }
      else {
        customSnackBar(context,'User_Name Or Password is Wrong');
        isLoading=false;
      }
    },
    builder:(context,state) => ModalProgressHUD(
    inAsyncCall: isLoading,
      child: Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.05),
            child: Column(
              children: [
                const AnimationSection(),
                SizedBox(height: MediaQuery.of(context).size.height*0.03),
                const LoginSection(),
              ],
            ),
          ),
        ),
      ),
    )
    )
    );
  }
}