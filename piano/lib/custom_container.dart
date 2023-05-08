import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.notaSany,
    required this.containerColor,
  });

  final int notaSany;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          AudioPlayer().play(AssetSource('notes/note$notaSany.wav'));
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: containerColor,
          ),
          width: double.infinity,
        ),
      ),
    );
  }
}
