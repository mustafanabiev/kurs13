import 'package:flutter/material.dart';
import 'package:piano/custom_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff343434),
        title: const Text(
          'Flutter hylophone',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xff343434),
      body: Column(
        children: const [
          SizedBox(height: 5),
          CustomContainer(
            notaSany: 1,
            containerColor: Color(0xffEF443A),
          ),
          SizedBox(height: 5),
          CustomContainer(
            notaSany: 2,
            containerColor: Color(0xffF99700),
          ),
          SizedBox(height: 5),
          CustomContainer(
            notaSany: 3,
            containerColor: Color(0xffFFE93B),
          ),
          SizedBox(height: 5),
          CustomContainer(
            notaSany: 4,
            containerColor: Color(0xff4CB050),
          ),
          SizedBox(height: 5),
          CustomContainer(
            notaSany: 5,
            containerColor: Color(0xff2E968C),
          ),
          SizedBox(height: 5),
          CustomContainer(
            notaSany: 6,
            containerColor: Color(0xff2996F5),
          ),
          SizedBox(height: 5),
          CustomContainer(
            notaSany: 7,
            containerColor: Color(0xff9B2881),
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
