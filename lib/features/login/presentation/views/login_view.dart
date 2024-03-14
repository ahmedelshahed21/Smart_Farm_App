import 'package:flutter/material.dart';
import 'package:smart_farm/features/login/presentation/views/widgets/animations_section.dart';
import 'package:smart_farm/features/login/presentation/views/widgets/login_section.dart';


class LoginView extends StatelessWidget{
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: const [
            AnimationSection(),
            SizedBox(height: 40),
            LoginSection(),
          ],
        ),
      ),
    );
  }
}