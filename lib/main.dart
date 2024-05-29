import 'package:fidel/data/repositories/repositories_authentication/authentication_repository.dart';
import 'package:fidel/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import './app.dart';

Future<void> main() async {
  // widget bindings
  final WidgetsBinding widgetsBindings =
      WidgetsFlutterBinding.ensureInitialized();

  // init local storage
  await GetStorage.init();

  //init Await Native Splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBindings);
  // init Initialize FireBase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((FirebaseApp value) => Get.put(AuthenticationRepository()));

  runApp(const MyApp());
}
