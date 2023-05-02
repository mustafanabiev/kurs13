import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
    required this.name,
    required this.kesibi,
    required this.phone,
    required this.gmail,
  });

  final String name;
  final String kesibi;
  final String phone;
  final String gmail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: const Text(
          'Тапшырма 4',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xff056C5C),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontFamily: 'Pacifico',
              ),
            ),
            Text(
              '$kesibi Developer',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
            const Divider(
              color: Colors.white,
              thickness: 1.5,
              indent: 70,
              endIndent: 70,
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.white,
              child: Row(
                children: [
                  const SizedBox(width: 26),
                  const Icon(
                    Icons.phone_outlined,
                    size: 28,
                    color: Color(0xff056C5C),
                  ),
                  const SizedBox(width: 26),
                  Text(
                    '+ 996 $phone',
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color(0xff056C5C),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.white,
              child: Row(
                children: [
                  const SizedBox(width: 26),
                  const Icon(
                    Icons.email_outlined,
                    size: 28,
                    color: Color(0xff056C5C),
                  ),
                  const SizedBox(width: 26),
                  Text(
                    gmail,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color(0xff056C5C),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
