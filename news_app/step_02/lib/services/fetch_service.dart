import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart';
import 'package:step_02/constants/api_const.dart';
import 'package:step_02/models/top_news.dart';

class TopNewsService {
  final client = Client();

  Future<TopNews?> fetchTopNews() async {
    final url = Uri.parse(ApiConst.topNews);

    final response = await client.get(url);
    log(response.statusCode.toString());
    if (response.statusCode == 200 || response.statusCode == 201) {
      log(response.body);
      final data = jsonDecode(response.body);
      log(data.toString());
      log(data.runtimeType.toString());
      final topNews = TopNews.fromJson(data);
      log(topNews.toString());

      return topNews;
    }
    return null;
  }
}
