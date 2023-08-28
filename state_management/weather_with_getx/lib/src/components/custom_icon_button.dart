import 'package:flutter/material.dart';
import 'package:weather_with_getx/src/constants/app_colors.dart';

class CustomIconsButton extends StatelessWidget {
  const CustomIconsButton({
    required this.icon,
    super.key,
    this.onPressed,
  });

  final void Function()? onPressed;

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: AppColors.white,
        size: 52,
      ),
    );
  }
}
