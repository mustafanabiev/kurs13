// import: immortoo
import 'package:flutter/material.dart';

// void: main funksiasinin tibi
// main: funksianyn aty
// (): main funksiasynyn parametri
// {}: main funksiasynyn denesi
void main() {
// runApp: Tirkemeni jurguzup beret
// const: ozgorboi torgan nersege berebis
// MyApp(): classtyn aty
  runApp(const MyApp());
}

// class: keyword, classtyn dartka bir tushunuk kirgize alabys
// MyApp: classtyn aty
// extends: muras alat. MyApp <--- StatelessWidget
// StatelessWidget: Widget
class MyApp extends StatelessWidget {
  // super: child classtan parent classka otkoryn beret. MyApp ---> StatelessWidget
  const MyApp({super.key});

// @override: parent classtagy method du child classta ozgortup jazuu. MyApp <--- StatelessWidget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
