import 'package:dash_quest/model/article.dart';

abstract class ArticleService {
  /// Finds articles matching the tags.
  Future<List<Article>> findArticlesForTags(List<String> tags);

  /// find all rated articles
  Future<List<Article>> findAllRatedArticles();

  /// Rates article with tags from user.
  Future rateArticle(String articleId, List<String> markedTags, int starRating);
}
