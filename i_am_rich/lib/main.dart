import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffECB90B),
        title: const Text(
          'Тапшырма 3',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        elevation: 10,
      ),
      backgroundColor: const Color(0xffECB90B),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'I’m Rich',
              style: TextStyle(
                fontFamily: 'Sofia',
                fontSize: 50,
              ),
            ),
            Image.asset('assets/image.png'),
            // Image.network(
            //   'https://vlast.kz/media/pages/el/kirgizia_1000x768.jpg',
            //   width: 400,
            //   height: 200,
            // ),
          ],
        ),
      ),
    );
  }
}
