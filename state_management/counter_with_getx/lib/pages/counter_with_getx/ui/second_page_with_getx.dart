import 'package:counter_with_getx/pages/counter_with_getx/logic/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPageWithGetx extends StatelessWidget {
  SecondPageWithGetx({Key? key}) : super(key: key);

  final controller = Get.put(CounterPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondPageWithGetx'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
