import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/modules/home/home_page.dart';
import 'package:flash_chat/service/token_service.dart';
import 'package:flutter/material.dart';

class AuthService {
  final firebase = FirebaseAuth.instance;

  Future<void> login(
    BuildContext context, {
    required String email,
    required String password,
  }) async {
    try {
      final item = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      tokenService.setData(item.user!.uid);
      // ignore: use_build_context_synchronously
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const HomePage(),
        ),
        (route) => false,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        log('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        log('The account already exists for that email.');
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> register(
    BuildContext context, {
    required String email,
    required String password,
  }) async {
    try {
      final item = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      tokenService.setData(item.user!.uid);
      // ignore: use_build_context_synchronously
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const HomePage(),
        ),
        (route) => false,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        log('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        log('The account already exists for that email.');
      }
    } catch (e) {
      log(e.toString());
    }
  }
}

final authService = AuthService();
