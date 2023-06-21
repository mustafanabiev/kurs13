import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:piano_full/app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}
