import 'package:flutter/material.dart';

class DiceWidget extends StatelessWidget {
  const DiceWidget({
    super.key,
    this.onTap,
    required this.soljakKubik,
  });

  final void Function()? onTap;
  final String soljakKubik;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: InkWell(
          onTap: onTap,
          child: Image.asset('assets/dice$soljakKubik.png'),
        ),
      ),
    );
  }
}
