import 'package:flutter/material.dart';

class StateLessWidget extends StatelessWidget {
  const StateLessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int san = 0;

    void increment() {
      san++;
      print('san: $san');
    }

    void decrement() {
      san--;
      print('san: $san');
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('StateLessWidget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$san', style: const TextStyle(fontSize: 64)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: decrement,
                  child: const Icon(Icons.remove),
                ),
                ElevatedButton(
                  onPressed: increment,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
