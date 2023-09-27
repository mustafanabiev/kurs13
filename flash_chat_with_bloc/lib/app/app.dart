import 'package:flash_chat_with_bloc/modules/home/view/home_page.dart';
import 'package:flash_chat_with_bloc/modules/welcome/welcome_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp(this.isAuth, this.password, {super.key});
  final bool isAuth;
  final String password;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: isAuth ? HomePage(password: password) : const WelcomePage(),
    );
  }
}
