import 'package:flutter/material.dart';

class StateFulWidget extends StatefulWidget {
  const StateFulWidget({Key? key}) : super(key: key);

  @override
  _StatefullWidgetState createState() => _StatefullWidgetState();
}

class _StatefullWidgetState extends State<StateFulWidget> {
  int san = 0;

  void increment() {
    setState(() {
      san++;
    });
    print('san: $san');
  }

  void decrement() {
    setState(() {
      san--;
    });
    print('san: $san');
  }

  // @override
  // void initState() {
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StateFulWidget')),
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
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
