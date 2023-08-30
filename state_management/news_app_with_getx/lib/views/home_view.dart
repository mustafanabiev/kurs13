import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_with_getx/components/news_card.dart';
import 'package:news_app_with_getx/controller/fetch_controller.dart';
import 'package:news_app_with_getx/theme/app_colors.dart';
import 'package:news_app_with_getx/views/search_view.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final controller = Get.put(FetchController());

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
      body: Obx(
        () => controller.topNews.value == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: controller.topNews.value!.articles.length,
                itemBuilder: (context, index) {
                  final item = controller.topNews.value!.articles[index];
                  return NewsCard(item: item);
                },
              ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.appBar,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SearchView(),
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
