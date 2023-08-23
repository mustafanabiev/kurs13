import 'dart:developer';

import 'package:counter_with_getx/pages/counter_with_getx/logic/counter_controller.dart';
import 'package:counter_with_getx/pages/counter_with_getx/ui/second_page_with_getx.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterPageWithGetx extends StatelessWidget {
  CounterPageWithGetx({super.key});

  final controller = Get.put(CounterPageController());

  @override
  Widget build(BuildContext context) {
    log('build ---> kairadan kuruldu');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('CounterPageWithGetx'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPageWithGetx(),
                  ),
                );
              },
              child: Container(
                width: 300,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 189, 194, 189),
                ),
                child: Center(
                  child: Obx(() {
                    log('Obx ----> kairadan kuruldu');
                    return Text(
                      '${controller.counter}',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 38,
                      ),
                    );
                  }),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: controller.decrementCounter,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(120, 50),
                  ),
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: controller.incrementCounter,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(120, 50),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
