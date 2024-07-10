import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_farm/Features/manual%20control/data/repos/pump_repo/pump_repo_impl.dart';
import 'package:smart_farm/Features/manual%20control/data/repos/roof_repo/roof_repo_impl.dart';
import 'package:smart_farm/Features/manual%20control/presentation/manager/pump_cubit/pump_cubit.dart';
import 'package:smart_farm/Features/manual%20control/presentation/manager/pump_cubit/pump_state.dart';
import 'package:smart_farm/Features/manual%20control/presentation/manager/roof_cubit/roof_cubit.dart';
import 'package:smart_farm/Features/manual%20control/presentation/manager/roof_cubit/roof_state.dart';
import 'package:smart_farm/Features/manual%20control/presentation/views/widgets/manual_control_card.dart';
import 'package:smart_farm/core/utils/styles_app.dart';

class ManualControlView extends StatelessWidget {
  const ManualControlView({Key? key}) : super(key: key);
  static String id = 'ManualControlView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          BlocProvider(
            create: (context) => PumpCubit(PumpRepoImpl()),
            child: BlocConsumer<PumpCubit, PumpState>(
              listener: (context, state) {
                if (state is PumpFailure) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text('Failed to send command: ${state.error}')),
                  );
                }
              },
              builder: (context, state) {
                String waterStatus = 'Open';
                if (state is PumpLoadingState) {
                  return const ManualControlCard(
                    icon: Icons.water_drop_outlined,
                    iconColor: Colors.blue,
                    title: 'Water',
                    status: SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(color: Colors.greenAccent),
                    ),
                  );
                } else if (state is PumpSuccess) {
                  waterStatus = state.isPumpOn ? 'Close' : 'Open';
                }
                return ManualControlCard(
                  icon: Icons.water_drop_outlined,
                  iconColor: Colors.blue,
                  title: 'Water',
                  status: Text(waterStatus,
                      style: StylesApp.styleSemiBold18(context).copyWith(
                          color: Colors.white, fontSize: 25, letterSpacing: 5)),
                  onPressed: () {
                    if (waterStatus == 'Open') {
                      context
                          .read<PumpCubit>()
                          .turnOnOrTurnOffPump('TURN_ON_PUMP');
                    } else {
                      context
                          .read<PumpCubit>()
                          .turnOnOrTurnOffPump('TURN_OFF_PUMP');
                    }
                  },
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          BlocProvider(
            create: (context)=> RoofCubit(RoofRepoImpl()),
            child: BlocConsumer<RoofCubit,RoofState>(
              listener: (context, state) {
                if (state is RoofFailure) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text('Failed to send command: ${state.error}')),
                  );
                }
              },
              builder: (context, state) {
                String roofStatus = 'Open';
                if (state is RoofLoadingState) {
                  return const ManualControlCard(
                    icon: Icons.roofing,
                    iconColor: Colors.brown,
                    title: 'Roof',
                    status: SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(color: Colors.greenAccent),
                    ),
                  );
                } else if (state is RoofSuccess) {
                  roofStatus = state.isRoofOpen ? 'Close' : 'Open';
                }
                return ManualControlCard(
                  icon: Icons.roofing,
                  iconColor: Colors.brown,
                  title: 'Roof',
                  status: Text(roofStatus,
                      style: StylesApp.styleSemiBold18(context).copyWith(
                          color: Colors.white, fontSize: 25, letterSpacing: 5)),
                  onPressed: () {
                    if (roofStatus == 'Open') {
                      context.read<RoofCubit>().openOrCloseOffRoof('OPEN_ROOF');
                      log('roof opened');
                    } else {
                      context.read<RoofCubit>().openOrCloseOffRoof('CLOSE_ROOF');
                      log('roof closed');
                    }
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
