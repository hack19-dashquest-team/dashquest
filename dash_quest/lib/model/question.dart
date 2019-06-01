import 'package:json_annotation/json_annotation.dart';

part 'question.g.dart';

@JsonSerializable()
class QuestionResponse {
  String questionId;
  bool isCorrect;
  AnswerItem answerItem;
  DateTime answerTime;

  QuestionResponse();

  Map<String, dynamic> toJson() => _$QuestionResponseToJson(this);

  factory QuestionResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestionResponseFromJson(json);
}

@JsonSerializable()
class Question {
  String id;
  String question;
  List<AnswerItem> answers = [];
  String correctAnswerId;
  List<String> tags = [];

  Question();

  Map<String, dynamic> toJson() => _$QuestionToJson(this);

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}

@JsonSerializable()
class QuestionsData {
  List<Question> questions = [];

  QuestionsData();

  Map<String, dynamic> toJson() => _$QuestionsDataToJson(this);

  factory QuestionsData.fromJson(Map<String, dynamic> json) =>
      _$QuestionsDataFromJson(json);
}

/// main answer item (text choice)
///
@JsonSerializable()
class AnswerItem {
  String id;
  String data;
  String type;

  AnswerItem();

  Map<String, dynamic> toJson() => _$AnswerItemToJson(this);

  factory AnswerItem.fromJson(Map<String, dynamic> json) =>
      _$AnswerItemFromJson(json);
}
// not used other types
///// Markdown styled answer (can include code)
//class CodeSnippetAnswerItem extends AnswerItem {
//  String markdown;
//}
//
///// Image answer item with url to image.
//class ImageAnswerItem extends AnswerItem {
//  String imageUrl;
//}
