import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qastlay/utils/theme/theme.dart';
import '../features/authentication/screens/login/login.dart';
import '../features/authentication/screens/onboarding/onboarding.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: CustomAppTheme.lightTheme,
      darkTheme: CustomAppTheme.darkTheme,

      home: const OnBoardingScreen(),
      // home: SignupScreen(),
      // home: const LoginScreen(),
    );
  }
}

