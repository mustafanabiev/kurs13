import 'package:flutter/material.dart';
import 'package:quiz_app2/model/quiz_model.dart';
import 'package:quiz_app2/widgets/quiz_button.dart';
import 'package:quiz_app2/widgets/result_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List jooptor = <bool>[];
  List tuuraJooptor = <bool>[];
  List kataJooptor = <bool>[];

  void teksher(bool value) {
    if (quizzes[index].answer == value) {
      jooptor.add(true);
      tuuraJooptor.add(true);
    } else {
      jooptor.add(false);
      kataJooptor.add(false);
    }
    setState(() {
      if (quizzes[index] == quizzes.last) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Сиз бул тесстен ...'),
              content: Text(
                'Туура жооптор ${tuuraJooptor.length}. Ката жооптор ${kataJooptor.length}',
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      index = 0;
                      jooptor.clear();
                      tuuraJooptor.clear();
                      kataJooptor.clear();
                      Navigator.pop(context);
                    });
                  },
                  child: const Text('Жаныдан баштоо'),
                )
              ],
            );
          },
        );
      } else {
        index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      backgroundColor: const Color(0xff343434),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              quizzes[index].question,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            const Spacer(),
            QuizButton(
              tuuraButtonbu: true,
              baskanda: (value) {
                teksher(value);
              },
            ),
            const SizedBox(height: 20),
            QuizButton(
              tuuraButtonbu: false,
              baskanda: (maani) {
                teksher(maani);
              },
            ),
            const SizedBox(height: 50),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: jooptor.length,
                itemBuilder: (context, index) {
                  return jooptor[index]
                      ? const ResultButton(tuuraIconBu: true)
                      : const ResultButton(tuuraIconBu: false);
                },
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text(
        'Тапшырма 7',
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
    );
  }
}

// List sandar = [1, 2, 3, 'Bishkek', 'Batken', true, 10];

// List texxter = <String>['Salam', 'Kurs13', 'KG', 1, 2, 4, true];
