import 'package:flutter/material.dart';
import 'package:step_02/models/top_news.dart';
import 'package:step_02/services/fetch_service.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TopNews? topNews;

  Future<void> fetchNews() async {
    topNews = await TopNewsService().fetchTopNews();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomeView')),
      body: topNews == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Center(child: Text(topNews!.status)),
    );
  }
}
