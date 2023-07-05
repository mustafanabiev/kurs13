import 'package:flutter/material.dart';
import 'package:game_test_full/components/custom_card.dart';
import 'package:game_test_full/constants/app_colors.dart';
import 'package:game_test_full/constants/app_text.dart';
import 'package:game_test_full/models/continents.dart';
import 'package:game_test_full/pages/test_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.volume_up,
              color: AppColors.yellow,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: AppColors.blue,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: AppColors.black,
            ),
          ),
        ],
        backgroundColor: AppColors.bgColor,
        title: const Text(
          AppText.appBarText,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: AppColors.bgColor,
      body: Column(
        children: [
          const Divider(
            indent: 26,
            endIndent: 26,
            thickness: 2,
            color: AppColors.black,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                final continent = continents[index];
                return CustomCard(
                  onTap: () {
                    if (continent.suroo != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TestPage(
                            suroo: continent.suroo!,
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Бул континентте суроо жок'),
                        ),
                      );
                    }
                  },
                  item: continent,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
