// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionResponse _$QuestionResponseFromJson(Map<String, dynamic> json) {
  return QuestionResponse()
    ..questionId = json['questionId'] as String
    ..isCorrect = json['isCorrect'] as bool
    ..answerItem = json['answerItem'] == null
        ? null
        : AnswerItem.fromJson(json['answerItem'] as Map<String, dynamic>)
    ..answerTime = json['answerTime'] == null
        ? null
        : DateTime.parse(json['answerTime'] as String);
}

Map<String, dynamic> _$QuestionResponseToJson(QuestionResponse instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'isCorrect': instance.isCorrect,
      'answerItem': instance.answerItem,
      'answerTime': instance.answerTime?.toIso8601String()
    };

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return Question()
    ..id = json['id'] as String
    ..question = json['question'] as String
    ..answers = (json['answers'] as List)
        ?.map((e) =>
            e == null ? null : AnswerItem.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..correctAnswerId = json['correctAnswerId'] as String
    ..tags = (json['tags'] as List)?.map((e) => e as String)?.toList();
}

Map<String, dynamic> _$QuestionToJson(Question instance) => <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'answers': instance.answers,
      'correctAnswerId': instance.correctAnswerId,
      'tags': instance.tags
    };

QuestionsData _$QuestionsDataFromJson(Map<String, dynamic> json) {
  return QuestionsData()
    ..questions = (json['questions'] as List)
        ?.map((e) =>
            e == null ? null : Question.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$QuestionsDataToJson(QuestionsData instance) =>
    <String, dynamic>{'questions': instance.questions};

AnswerItem _$AnswerItemFromJson(Map<String, dynamic> json) {
  return AnswerItem()
    ..id = json['id'] as String
    ..data = json['data'] as String
    ..type = json['type'] as String;
}

Map<String, dynamic> _$AnswerItemToJson(AnswerItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data': instance.data,
      'type': instance.type
    };
