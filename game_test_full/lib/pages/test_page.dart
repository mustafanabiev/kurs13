import 'package:flutter/material.dart';
import 'package:game_test_full/components/appbar_title_widget.dart';
import 'package:game_test_full/components/slider_widget.dart';
import 'package:game_test_full/components/variant_widget.dart';
import 'package:game_test_full/models/suroo.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key, required this.suroo}) : super(key: key);

  final List<Suroo> suroo;

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int index = 0;
  int tuuraJoop = 0;
  int kataJoop = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitleWidget(
          suroonunSany: index + 1,
          tuuraJoop: tuuraJoop,
          kataJoop: kataJoop,
        ),
      ),
      body: Column(
        children: [
          SliderWidget(value: index),
          const SizedBox(height: 30),
          Text(
            widget.suroo[index].text,
            style: const TextStyle(
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
                  'assets/images/${widget.suroo[index].image}',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          VariantWidget(
            onTap: (isTrue) {
              if (index + 1 == widget.suroo.length) {
                showDialog<void>(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Тесттин жыйынтыгы'),
                      content: Text(
                        'Туура жооптор: $tuuraJoop \n Ката жооптор: $kataJoop',
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: const Text(
                            'Кайра баштоо',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              index = 0;
                              tuuraJoop = 0;
                              kataJoop = 0;
                            });
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              } else {
                if (isTrue == true) {
                  tuuraJoop++;
                } else {
                  kataJoop++;
                }
                setState(() {
                  index++;
                });
              }
            },
            jooptor: widget.suroo[index].jooptor,
          ),
        ],
      ),
    );
  }
}
