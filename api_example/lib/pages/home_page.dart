import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final api = 'https://jsonplaceholder.typicode.com/posts';
  dynamic data;

  Future<dynamic>? fetchData() async {
    final dio = Dio();

    final response = await dio.get(api);
    if (response.statusCode == 200 || response.statusCode == 201) {
      data = response.data;
    }
    setState(() {});
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: data == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: Text('$data'),
            ),
    );
  }
}
