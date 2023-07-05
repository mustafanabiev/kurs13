import 'package:flutter/material.dart';
import 'package:game_test_full/constants/app_colors.dart';
import 'package:game_test_full/models/suroo.dart';

class AppBarTitleWidget extends StatelessWidget {
  const AppBarTitleWidget({
    required this.suroonunSany,
    required this.tuuraJoop,
    required this.kataJoop,
    super.key,
  });

  final int suroonunSany;
  final int tuuraJoop;
  final int kataJoop;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: Row(
              children: [
                Text(
                  '$kataJoop',
                  style: const TextStyle(fontSize: 16, color: AppColors.red),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    '${asiaQuestions.length}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  '$tuuraJoop',
                  style: const TextStyle(fontSize: 16, color: AppColors.active),
                ),
              ],
            ),
          ),
        ),
        Text('$suroonunSany', style: const TextStyle(fontSize: 22)),
        Row(
          children: [
            SizedBox(
              width: 70,
              height: 30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const Icon(
                    Icons.favorite,
                    color: AppColors.red,
                  );
                },
              ),
            ),
            InkWell(onTap: () {}, child: const Icon(Icons.more_vert)),
          ],
        ),
      ],
    );
  }
}
