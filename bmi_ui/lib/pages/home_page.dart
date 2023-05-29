import 'package:bmi_ui/components/gender_widget.dart';
import 'package:bmi_ui/components/status_card.dart';
import 'package:bmi_ui/utils/app_colors.dart';
import 'package:bmi_ui/utils/app_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _currentSliderValue = 180;

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
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: const [
                  StatusCard(
                    widget: GenderWidget(
                      icon: Icons.male,
                      text: AppText.male,
                    ),
                  ),
                  StatusCard(
                    widget: GenderWidget(
                      icon: Icons.female,
                      text: AppText.female,
                    ),
                  ),
                ],
              ),
            ),
            StatusCard(
              widget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    AppText.height,
                    style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        '180',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                          color: AppColors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 6),
                        child: Text(
                          AppText.cm,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: AppColors.textColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: _currentSliderValue,
                    max: 300,
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
                    activeColor: AppColors.white,
                    thumbColor: AppColors.redColor,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          AppText.weight,
                          style: TextStyle(
                            color: AppColors.textColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          '60',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                              backgroundColor: AppColors.btnColor,
                              foregroundColor: AppColors.white,
                              onPressed: () {},
                              child: const Icon(Icons.remove, size: 40),
                            ),
                            FloatingActionButton(
                              backgroundColor: AppColors.btnColor,
                              foregroundColor: AppColors.white,
                              onPressed: () {},
                              child: const Icon(Icons.add, size: 40),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  StatusCard(
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          AppText.age,
                          style: TextStyle(
                            color: AppColors.textColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          '28',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                              backgroundColor: AppColors.btnColor,
                              foregroundColor: AppColors.white,
                              onPressed: () {},
                              child: const Icon(Icons.remove, size: 40),
                            ),
                            FloatingActionButton(
                              backgroundColor: AppColors.btnColor,
                              foregroundColor: AppColors.white,
                              onPressed: () {},
                              child: const Icon(Icons.add, size: 40),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {},
        child: Container(
          width: double.infinity,
          height: 73,
          color: AppColors.redColor,
          child: const Center(
            child: Text(
              'CALCULATOR',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
