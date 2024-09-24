import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qastlay/bindings/general_bindings.dart';
import 'package:qastlay/utils/constants/colors.dart';
import 'package:qastlay/utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: CustomAppTheme.lightTheme,
      darkTheme: CustomAppTheme.darkTheme,
      initialBinding: GeneralBindings(),

      // home: const OnBoardingScreen(),
      // home: const PopularProducts(),

     home: const Scaffold(backgroundColor: CustomColors.primary, body: Center (child: CircularProgressIndicator (color: Colors.white))),

    );
  }
}

