import 'package:news_app_with_getx/models/source.dart';

class Articles {
  const Articles({
    required this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  final Source source;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'source': source.toJson(),
      'author': author,
      'title': title,
      'description': description,
      'url': url,
      'urlToImage': urlToImage,
      'publishedAt': publishedAt,
      'content': content,
    };
  }

  factory Articles.fromJson(Map<String, dynamic> json) {
    return Articles(
      source: Source.fromJson(json['source'] as Map<String, dynamic>),
      author: json['author'] != null ? json['author'] as String : null,
      title: json['title'] != null ? json['title'] as String : null,
      description:
          json['description'] != null ? json['description'] as String : null,
      url: json['url'] != null ? json['url'] as String : null,
      urlToImage:
          json['urlToImage'] != null ? json['urlToImage'] as String : null,
      publishedAt:
          json['publishedAt'] != null ? json['publishedAt'] as String : null,
      content: json['content'] != null ? json['content'] as String : null,
    );
  }
}
