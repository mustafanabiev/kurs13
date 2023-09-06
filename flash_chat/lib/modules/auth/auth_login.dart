import 'package:flash_chat/components/buttons/custom_button.dart';
import 'package:flutter/material.dart';

class AuthLogin extends StatefulWidget {
  const AuthLogin({Key? key}) : super(key: key);

  @override
  _AuthLoginState createState() => _AuthLoginState();
}

class _AuthLoginState extends State<AuthLogin> {
  final ctlEmail = TextEditingController();
  final ctlPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: ctlEmail,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your email',
                hintStyle: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 14),
            TextFormField(
              controller: ctlPassword,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your password',
                hintStyle: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 40),
            CustomButton(
              onPressed: () {},
              text: 'Login',
              backgroundColor: const Color(0xff60B2EA),
            ),
          ],
        ),
      ),
    );
  }
}
