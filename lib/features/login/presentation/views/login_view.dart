import 'package:flutter/material.dart';
import 'package:smart_farm/features/login/presentation/views/widgets/animations_section.dart';
import 'package:smart_farm/features/login/presentation/views/widgets/login_section.dart';


class LoginView extends StatefulWidget{
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.05),
        child: ListView(
          children: [
            const AnimationSection(),
            SizedBox(height: MediaQuery.of(context).size.height*0.05),
            const LoginSection(),
          ],
        ),
      ),
    );
  }
}