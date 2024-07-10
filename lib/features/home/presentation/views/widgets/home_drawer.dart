import 'package:flutter/material.dart';
import 'package:smart_farm/Features/home/presentation/views/widgets/custom_drawer_header.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/utils/styles_app.dart';

class HomeDrawer extends StatefulWidget{
  const HomeDrawer({super.key});

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}
class _HomeDrawerState extends State<HomeDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SafeArea(
              child: CustomDrawerHeader(),
            ),
            const Spacer(),
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
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}




