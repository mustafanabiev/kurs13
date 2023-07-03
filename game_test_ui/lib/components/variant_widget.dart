import 'package:flutter/material.dart';
import 'package:game_test_ui/constants/app_colors.dart';

List<String> countries = ['Kyrgyzstan', 'China', 'Russia', 'USA'];

class VariantWidget extends StatelessWidget {
  const VariantWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 135,
        ),
        itemCount: 4,
        itemBuilder: (context, index) {
          final item = countries[index];
          return Card(
            color: AppColors.grey,
            child: Center(
              child: Text(
                item,
                style: const TextStyle(fontSize: 24),
              ),
            ),
          );
        },
      ),
    );
  }
}
