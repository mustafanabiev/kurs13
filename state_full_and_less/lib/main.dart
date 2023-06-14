import 'package:flutter/material.dart';
import 'package:state_full_and_less/stateful_widget/stateful_widget.dart';
import 'package:state_full_and_less/stateless_widget/stateless_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const StateLessWidget(),
    );
  }
}
