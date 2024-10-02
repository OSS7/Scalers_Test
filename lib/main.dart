import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/config/injectable_cofig.dart';
import 'core/config/route_config.dart';
import 'core/config/route_config.dart' as my_route;
import 'core/constant/colors.dart';
import 'presentation/jobs/jobs_view.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: my_route.getPages,
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      home: const JobsView(),
    );
  }
}
