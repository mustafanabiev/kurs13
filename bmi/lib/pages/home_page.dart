import 'package:bmi/components/status_card.dart';
import 'package:bmi/utils/app_colors.dart';
import 'package:bmi/utils/app_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: const Text(AppText.appBarText),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                StatusCard(icon: Icons.male, text: AppText.male),
                StatusCard(icon: Icons.female, text: AppText.female),
              ],
            ),
          ),
          const Expanded(child: Text('Bloc 2')),
          Expanded(
            child: Row(
              children: const [
                StatusCard(icon: Icons.male, text: AppText.male),
                StatusCard(icon: Icons.female, text: AppText.female),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
