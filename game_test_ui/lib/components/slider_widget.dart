import 'package:flutter/material.dart';
import 'package:game_test_ui/constants/app_colors.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    super.key,
  });

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
          value: 20,
          max: 100,
          onChanged: (value) {},
        ),
      ),
    );
  }
}
