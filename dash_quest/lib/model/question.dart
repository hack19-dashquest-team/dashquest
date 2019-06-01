class QuestionResponse {
  String questionId;
  bool isCorrect;
  AnswerItem answerItem;
  DateTime answerTime;
}

class Question {
  String id;
  String question;
  List<AnswerItem> answers = [];
  AnswerItem correctAnswer;
  List<String> tags = [];
}

/// main answer item (text choice)
class AnswerItem {
  String text;
}

/// Markdown styled answer (can include code)
class CodeSnippetAnswerItem extends AnswerItem {
  String markdown;
}

/// Image answer item with url to image.
class ImageAnswerItem extends AnswerItem {
  String imageUrl;
}
