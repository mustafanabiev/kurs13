// fstful - class tin atin filedyn anina karap beret
// fstless - class tin atin filedyn anina karap beret
// statefulW - class tin atin ozubyz bergibiz kelse
// statelessW - class tin atin ozubyz bergibiz kelse

import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int soljakKubik = 4;
  int onjakKubik = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Тапшырма 5', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: const Color(0xffFFE93B),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      soljakKubik = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('assets/dice$soljakKubik.png'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      onjakKubik = Random().nextInt(7);
                    });
                  },
                  child: Image.asset(
                    'assets/dice${onjakKubik == 0 ? onjakKubik + 1 : onjakKubik}.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
