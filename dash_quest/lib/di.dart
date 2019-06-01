import 'package:dash_quest/db/article_dao.dart';
import 'package:dash_quest/db/question_dao.dart';
import 'package:dash_quest/service/article_service.dart';
import 'package:dash_quest/service/mock_article_service.dart';
import 'package:dash_quest/service/mock_question_service.dart';
import 'package:dash_quest/service/mock_user_service.dart';
import 'package:dash_quest/service/question_service.dart';
import 'package:dash_quest/service/user_service.dart';
import 'package:dime/dime.dart';

import 'db/user_dao.dart';

class DemoModule extends BaseDimeModule {
  String dbPath;

  DemoModule(this.dbPath);

  @override
  void updateInjections() {
    addSingle(UserDao(dbPath));
    addSingle(QuestionDao(dbPath));
    addSingle(ArticleDao(dbPath));
    addSingle<UserService>(MockUserService());
    addSingle<ArticleService>(MockArticleService());
    addSingle<QuestionService>(MockQuestionService());
  }
}
