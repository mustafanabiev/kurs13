import 'package:get/get.dart';
import 'package:news_app_with_getx/models/top_news.dart';
import 'package:news_app_with_getx/services/fetch_service.dart';

class SearchCtl extends GetxController {
  Rx<TopNews?> topNews = Rxn();
  bool isSearch = false;

  Future<void> fetchData(String title) async {
    isSearch = true;
    topNews.value = await TopNewsService().fetchSearchService(title);
    isSearch = false;
  }
}
