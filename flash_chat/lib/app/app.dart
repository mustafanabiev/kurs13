import 'package:flash_chat/modules/home/home_page.dart';
import 'package:flash_chat/modules/welcome/welcome_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp(this.isAuth, {super.key});
  final bool isAuth;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: isAuth ? const HomePage() : const WelcomePage(),
    );
  }
}
