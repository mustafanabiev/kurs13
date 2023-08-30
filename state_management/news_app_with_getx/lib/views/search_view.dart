import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_with_getx/components/news_card.dart';
import 'package:news_app_with_getx/controller/search_controller.dart';
import 'package:news_app_with_getx/theme/app_colors.dart';

class SearchView extends StatelessWidget {
  SearchView({Key? key}) : super(key: key);

  final controller = TextEditingController();
  final ctl = Get.put(SearchCtl());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async {
              await ctl.fetchData(controller.text);
            },
            icon: const Icon(Icons.search),
          ),
        ],
        backgroundColor: AppColors.appBar,
        foregroundColor: AppColors.white,
        title: TextField(
          onSubmitted: (value) async {
            ctl.fetchData(value);
          },
          controller: controller,
          decoration: const InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(255, 168, 168, 168),
            border: OutlineInputBorder(),
          ),
        ),
      ),
      body: Obx(() => _body(ctl)),
    );
  }

  Widget _body(SearchCtl ctl) {
    if (ctl.isSearch) {
      return const Center(child: CircularProgressIndicator());
    } else if (ctl.isSearch == false && ctl.topNews.value != null) {
      return ListView.builder(
        itemCount: ctl.topNews.value!.articles.length,
        itemBuilder: (context, index) {
          final item = ctl.topNews.value!.articles[index];
          return NewsCard(item: item);
        },
      );
    } else {
      return const Center(
        child: Text('Маалымат изделе элек !!!'),
      );
    }
  }
}
