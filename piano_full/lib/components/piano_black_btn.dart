import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PianoBlackBtn extends StatelessWidget {
  const PianoBlackBtn({
    this.visible = true,
    required this.notaName,
    super.key,
  });

  final bool visible;
  final String notaName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.5),
      child: SizedBox(
        width: 63,
        height: 170,
        child: Visibility(
          visible: visible,
          child: ElevatedButton(
            onPressed: () {
              AudioPlayer().play(AssetSource('notes/$notaName.mp3'));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) => Colors.black,
              ),
            ),
            child: const Text(''),
          ),
        ),
      ),
    );
  }
}
