import 'package:flash_chat/service/token_service.dart';
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
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                await tokenService.removeData();
              },
              icon: const Icon(Icons.clear)),
        ],
        title: const Text('HomePage'),
      ),
    );
  }
}
