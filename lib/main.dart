import 'dart:core';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:qastlay/data/repositories/authentication/repositories_authentication.dart';
import 'package:qastlay/firebase_options.dart';
import 'package:qastlay/utils/app.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  /// get local storage
  await GetStorage.init();

  /// authenticate Firebase
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  /// -- Splash screen load

  FlutterNativeSplash.preserve (widgetsBinding: widgetsBinding);
  ///-- Initialize Firebase & Authentication Repository
  await Firebase.initializeApp (options: DefaultFirebaseOptions.currentPlatform)
      .then( (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );
  runApp(const MyApp());
}
// await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
//       (FirebaseApp value) => Get.put(AuthenticationRepository()),
// );
