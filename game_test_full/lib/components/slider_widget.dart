import 'package:flutter/material.dart';
import 'package:game_test_full/constants/app_colors.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    required this.value,
    super.key,
  });

  final int value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 22),
      child: SliderTheme(
        data: SliderThemeData(
          overlayShape: SliderComponentShape.noOverlay,
          thumbShape: SliderComponentShape.noThumb,
        ),
        child: Slider(
          activeColor: AppColors.active,
          inactiveColor: AppColors.inActive,
          value: value.toDouble(),
          max: 10,
          onChanged: (value) {},
        ),
      ),
    );
  }
}
