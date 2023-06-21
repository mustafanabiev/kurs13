import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PianoWhiteBtn extends StatelessWidget {
  const PianoWhiteBtn({
    super.key,
    this.san,
    required this.notaName,
  });

  final int? san;
  final String notaName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: SizedBox(
        width: 80,
        child: ElevatedButton(
          onPressed: () {
            AudioPlayer().play(AssetSource('notes/$notaName.mp3'));
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith(
              (states) => Colors.white,
            ),
            overlayColor: MaterialStateProperty.resolveWith(
              (states) {
                return states.contains(MaterialState.pressed)
                    ? Colors.grey
                    : null;
              },
            ),
          ),
          child: const Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              '',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
