import 'package:flutter/material.dart';
import 'package:weather_app2/constants/app_colors.dart';

class CustomIconsButton extends StatelessWidget {
  const CustomIconsButton({
    required this.icon,
    super.key,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        icon,
        color: AppColors.white,
        size: 52,
      ),
    );
  }
}
