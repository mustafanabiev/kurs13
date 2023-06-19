import 'package:flutter/material.dart';

class PianoBlackBtn extends StatelessWidget {
  const PianoBlackBtn({
    this.visible = true,
    super.key,
  });
  final bool visible;

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
            onPressed: () {},
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
