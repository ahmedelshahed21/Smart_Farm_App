import 'package:flutter/material.dart';
import 'package:smart_farm/Features/home/presentation/views/home_view.dart';
import 'package:smart_farm/Features/home/presentation/views/widgets/sensors_and_control_room_card.dart';
import 'package:smart_farm/Features/manual%20control/presentation/views/manual_control_view.dart';
import 'package:smart_farm/Features/sensors/presentation/views/sensors_view.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/utils/assets_app.dart';
import 'package:smart_farm/core/utils/functions/custom_snack_bar.dart';

class HomeCards extends StatefulWidget {
  const HomeCards({super.key});

  @override
  State<HomeCards> createState() => _HomeCardsState();
}

class _HomeCardsState extends State<HomeCards> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SensorsAndControlRoomCard(
          backgroundColor: isSystemAuto == true ? Colors.white24 : kSecondaryColor,
          text: 'Control Room',
          textColor: isSystemAuto == true ? Colors.white24 : Colors.white,
          image: ImagesApp.controlImage,
          imageColor: isSystemAuto == true ? Colors.white24 : Colors.white,
          onTap: () {
            if (isSystemAuto == false) {
              Navigator.pushNamed(context, ManualControlView.id);
            } else {
              customSnackBar(context, ' You can\'t Control In Auto Mode');
            }
          },
        ),
        const SizedBox(
          width: 20,
        ),
        SensorsAndControlRoomCard(
          text: 'Sensors',
          image: ImagesApp.agriSensorImage,
          imageColor: Colors.greenAccent,
          onTap: () {
            Navigator.pushNamed(context, SensorsView.id);
          },
        ),
      ],
    );
  }
}
