import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kangsayur_mart/bloc_observer.dart';
import 'package:kangsayur_mart/core/bloc/dashboard/dashboard_cubit.dart';
import 'package:kangsayur_mart/core/bloc/product/product_bloc.dart';
import 'package:kangsayur_mart/core/bloc/search/search_bloc.dart';
import 'package:kangsayur_mart/core/bloc/theme/theme_cubit.dart';
import 'package:kangsayur_mart/core/bloc/theme/theme_state.dart';
import 'package:kangsayur_mart/ui/pages/dashboard/dashboard_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  Bloc.observer = Observer();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (_) => ThemeCubit()),
      BlocProvider(create: (_) => DashboardCubit()),
      BlocProvider(create: (_) => ProductBloc()),
      BlocProvider(create: (_) => SearchBloc()),
    ],
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: state.isDark ? ThemeData.dark() : ThemeData.light(),
              home: const DashboardPage());
        },
      ),
    );
  }
}
