import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';

enum ArticleType { VIDEO, URL, MARKDOWN, TEXT, DOCUMENTATION }

@JsonSerializable()
class Article {
  String id;
  String title;
  String abstract;
  String originalUrl;
  ArticleType type;
  List<String> tags = [];
  int rate; // 0-5 of usefulness

  Article();

  Map<String, dynamic> toJson() => _$ArticleToJson(this);

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}

@JsonSerializable()
class ArticlesData {
  List<Article> articles = [];

  ArticlesData();

  Map<String, dynamic> toJson() => _$ArticlesDataToJson(this);

  factory ArticlesData.fromJson(Map<String, dynamic> json) =>
      _$ArticlesDataFromJson(json);

}