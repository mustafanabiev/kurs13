import 'dart:developer';

import 'package:flash_chat_with_bloc/components/buttons/custom_button.dart';
import 'package:flash_chat_with_bloc/modules/auth/bloc/auth_bloc.dart';
import 'package:flash_chat_with_bloc/service/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthRegister extends StatefulWidget {
  const AuthRegister({Key? key}) : super(key: key);

  @override
  _AuthRegisterState createState() => _AuthRegisterState();
}

class _AuthRegisterState extends State<AuthRegister> {
  final _formKey = GlobalKey<FormState>();
  final ctlEmail = TextEditingController();
  final ctlPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(authService),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Register Page'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
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
                Builder(builder: (context) {
                  return CustomButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        if (ctlEmail.text.isNotEmpty &&
                            ctlPassword.text.isNotEmpty) {
                          BlocProvider.of<AuthBloc>(context).add(
                            SignUp(
                              context: context,
                              email: ctlEmail.text,
                              password: ctlPassword.text,
                            ),
                          );
                          // await authService.register(
                          //   context,
                          //   email: ctlEmail.text,
                          //   password: ctlPassword.text,
                          // );
                          FocusManager.instance.primaryFocus?.unfocus();
                        } else {
                          log('ctlEmail or ctlPassword is empty');
                        }
                      }
                    },
                    text: 'Register',
                    backgroundColor: const Color(0xff2671B6),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
