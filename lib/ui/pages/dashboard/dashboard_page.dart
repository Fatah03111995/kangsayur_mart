import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kangsayur_mart/core/bloc/dashboard/dashboard_cubit.dart';
import 'package:kangsayur_mart/core/bloc/dashboard/dashboard_state.dart';
import 'package:kangsayur_mart/core/routes/app_route.dart';
import 'package:kangsayur_mart/core/themes/my_theme.dart';
import 'package:kangsayur_mart/ui/pages/dashboard/widget/bottom_nav_bar.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).myColorScaffoldBg,
      body: Center(
        child: BlocBuilder<DashboardCubit, DashboardState>(
            builder: (context, state) {
          return AppRoute.dashboardNavigate(state.index);
        }),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
