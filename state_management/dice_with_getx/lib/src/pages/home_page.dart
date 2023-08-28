// fstful - class tin atin filedyn anina karap beret
// fstless - class tin atin filedyn anina karap beret
// statefulW - class tin atin ozubyz bergibiz kelse
// statelessW - class tin atin ozubyz bergibiz kelse

import 'package:dice_with_getx/src/controller/dice_controller.dart';
import 'package:dice_with_getx/src/widgets/dice_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final ctl = Get.put(DiceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Тапшырма 5',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: const Color(0xffFFE93B),
      body: Center(
        child: Obx(
          () {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DiceWidget(
                  onTap: ctl.baskanda,
                  soljakKubik: ctl.teksher(ctl.soljakKubik),
                ),
                DiceWidget(
                  onTap: ctl.baskanda,
                  soljakKubik: ctl.teksher(ctl.onjakKubik.value),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
