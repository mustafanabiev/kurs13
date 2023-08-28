import 'dart:math';

import 'package:get/get.dart';

class DiceController extends GetxController {
  int soljakKubik = 2;
  RxInt onjakKubik = 4.obs;

  void baskanda() {
    soljakKubik = Random().nextInt(7);
    onjakKubik.value = Random().nextInt(7);
  }

  String teksher(int value) {
    if (value == 0) {
      return '1';
    } else {
      return '$value';
    }
  }
}
