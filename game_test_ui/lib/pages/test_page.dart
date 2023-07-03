import 'package:flutter/material.dart';
import 'package:game_test_ui/components/appbar_title_widget.dart';
import 'package:game_test_ui/components/slider_widget.dart';
import 'package:game_test_ui/components/variant_widget.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitleWidget(),
      ),
      body: Column(
        children: [
          const SliderWidget(),
          const SizedBox(height: 30),
          const Text(
            'Bishkek',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w500,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/bishkek.jpeg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const VariantWidget(),
        ],
      ),
    );
  }
}
