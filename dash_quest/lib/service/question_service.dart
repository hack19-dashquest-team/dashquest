import 'package:dash_quest/model/question.dart';

abstract class QuestionService {
  /// Gets next random question for user.
  Future<Question> fetchNextQuestion();

  /// Gets all questions for user that wer not answered until `notAnswered` is false.
  /// Set `notAnswered` to null to get all.
  Future<List<Question>> fetchAllQuestions({bool notAnswered = true});

  Future recordAnswer(Question question, AnswerItem answer);

  Future<List<QuestionResponse>> getResponses();
}
