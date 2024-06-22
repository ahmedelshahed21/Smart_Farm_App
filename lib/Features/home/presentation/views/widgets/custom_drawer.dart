import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smart_farm/Features/home/presentation/views/widgets/custom_drawer_header.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/utils/assets_app.dart';
import 'package:smart_farm/core/utils/styles_app.dart';

class CustomDrawer extends StatelessWidget{
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kSecondaryColor,
      child: Column(
        children: [
          const SafeArea(
            child: CustomDrawerHeader(),
          ),
          const SizedBox(height: 40,),
          Card(
            child: ListTile(
              leading: Transform.rotate(
                  angle: 3.12,
                  child: const Icon(Icons.logout)
              ),
              title: Text('LOGOUT',
                style: StylesApp.styleBold12(context).copyWith(
                  fontSize: 18,
                  letterSpacing: 2
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

}




