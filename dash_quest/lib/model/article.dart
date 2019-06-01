enum ArticleType { VIDEO, URL, MARKDOWN, TEXT, DOCUMENTATION }

class Article {
  String title;
  String abstract;
  String originalUr;
  ArticleType type;
  List<String> tags = [];
  int rate; // 0-5 of usefulness
}
