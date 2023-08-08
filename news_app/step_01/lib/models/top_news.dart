import 'package:step_01/models/articles.dart';

class TopNews {
  const TopNews({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  final String status;
  final int totalResults;
  final List<Articles> articles;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'totalResults': totalResults,
      'articles': articles.map((x) => x.toJson()).toList(),
    };
  }

  factory TopNews.fromMap(Map<String, dynamic> json) {
    return TopNews(
      status: json['status'] as String,
      totalResults: json['totalResults'] as int,
      articles: List<Articles>.from(
        (json['articles'] as List<int>).map<Articles>(
          (x) => Articles.fromJson(x as Map<String, dynamic>),
        ),
      ),
    );
  }
}
