import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AppviewView extends GetView {
  const AppviewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppviewView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AppviewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
