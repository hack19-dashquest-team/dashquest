import 'dart:convert';

import 'package:dash_quest/db/question_dao.dart';
import 'package:dash_quest/db/user_dao.dart';
import 'package:dash_quest/model/question.dart';
import 'package:dash_quest/service/question_service.dart';
import 'package:dime/dime.dart';
import 'package:flutter/services.dart' show rootBundle;

class MockQuestionService extends QuestionService {
  var questionDao = Dime.inject<QuestionDao>();
  var userDao = Dime.inject<UserDao>();
  int lastQuestion = 0;
  List<QuestionResponse> responses = [];

  @override
  Future<List<Question>> fetchAllQuestions({bool notAnswered = true}) async {
    var data = await rootBundle.loadString("assets/questions.json");
    return QuestionsData.fromJson(json.decode(data))?.questions;
  }

  @override
  Future<Question> fetchNextQuestion() async {
    var all = await fetchAllQuestions();
    if (lastQuestion >= all.length - 1) {
      lastQuestion = 0;
      return all[lastQuestion];
    } else {
      lastQuestion = lastQuestion + 1;
      return all[lastQuestion++];
    }
  }

  @override
  Future recordAnswer(String questionId, AnswerItem answer) async {
    responses.add(QuestionResponse()
      ..questionId = questionId
      ..answerItem = answer
      ..answerTime = DateTime.now());
    return null;
  }
}
