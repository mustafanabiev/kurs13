import 'package:flutter/material.dart';
import 'package:news_app_full/constants/api_const.dart';
import 'package:news_app_full/models/articles.dart';
import 'package:news_app_full/models/top_news.dart';
import 'package:news_app_full/services/fetch_service.dart';
import 'package:news_app_full/theme/app_colors.dart';
import 'package:news_app_full/views/detail_view.dart';
import 'package:news_app_full/views/search_view.dart';

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
      appBar: AppBar(
        backgroundColor: AppColors.appBar,
        title: const Text(
          'News Aggregator',
          style: TextStyle(
            color: AppColors.white,
          ),
        ),
      ),
      body: topNews == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: topNews!.articles.length,
              itemBuilder: (context, index) {
                final item = topNews!.articles[index];
                return NewsCard(item: item);
              },
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.appBar,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SearchView(),
            ),
          );
        },
        child: const Icon(
          Icons.search,
          color: AppColors.white,
        ),
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.item,
  });

  final Articles item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailView(news: item),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Image.network(
                  item.urlToImage ?? ApiConst.image,
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                flex: 5,
                child: Text(
                  item.title ?? '',
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
