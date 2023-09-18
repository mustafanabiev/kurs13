import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat/app/app.dart';
import 'package:flash_chat/firebase_options.dart';
import 'package:flash_chat/service/token_service.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final isAuth = await tokenService.init();
  final password = await tokenService.readData();
  runApp(MyApp(isAuth, password));
}
