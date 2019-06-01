import 'dart:convert';

import 'package:dash_quest/model/article.dart';
import 'package:dash_quest/service/article_service.dart';
import 'package:flutter/services.dart';

class MockArticleService extends ArticleService {
  List<Article> cache = [];

  @override
  Future<List<Article>> findAllRatedArticles() async {
    if (cache.isEmpty) {
      var data = await rootBundle.loadString("assets/articles.json");
      cache = ArticlesData.fromJson(json.decode(data)).articles;
    }
    return cache;
  }

  @override
  Future<List<Article>> findArticlesForTags(List<String> tags) async {
    var articles = await findAllRatedArticles();
    return articles.where((article) {
      return tags.fold(false, (v, tag) => v || article.tags.contains(tag));
    });
  }

  @override
  Future rateArticle(
      String articleId, List<String> markedTags, int starRating) {
    return null;
  }
}
