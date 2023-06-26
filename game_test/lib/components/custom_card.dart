import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_test/constants/app_colors.dart';
import 'package:game_test/models/continents.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    required this.item,
    super.key,
  });

  final Continents item;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      child: Column(
        children: [
          const SizedBox(height: 5),
          Text(
            item.name,
            style: const TextStyle(fontSize: 22),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/icons/${item.image}.svg',
                color: item.color,
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star_outline),
              Icon(Icons.star_outline),
              Icon(Icons.star_outline),
              Icon(Icons.star_outline),
              Icon(Icons.star_outline),
            ],
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
