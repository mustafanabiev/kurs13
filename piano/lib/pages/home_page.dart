import 'package:flutter/material.dart';
import 'package:piano/components/piano_black_btn.dart';
import 'package:piano/components/piano_white_btn.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Flutter Piano'),
        centerTitle: true,
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) {
          return const Stack(
            children: [
              Row(
                children: [
                  PianoWhiteBtn(),
                  PianoWhiteBtn(),
                  PianoWhiteBtn(),
                  PianoWhiteBtn(),
                  PianoWhiteBtn(),
                  PianoWhiteBtn(),
                  PianoWhiteBtn(),
                ],
              ),
              Positioned(
                left: 40,
                right: 0,
                top: 0,
                child: Row(
                  children: [
                    PianoBlackBtn(),
                    PianoBlackBtn(),
                    PianoBlackBtn(visible: false),
                    PianoBlackBtn(),
                    PianoBlackBtn(),
                    PianoBlackBtn(),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
