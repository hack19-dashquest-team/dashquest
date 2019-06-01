import 'package:dash_quest/model/article.dart';
import 'package:dash_quest/model/question.dart';
import 'package:dash_quest/service/article_service.dart';
import 'package:dash_quest/service/question_service.dart';
import 'package:dime/dime.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DataTestPage extends StatefulWidget {
  @override
  _DataTestPageState createState() => _DataTestPageState();
}

class _DataTestPageState extends State<DataTestPage> {
  QuestionService questionService;
  ArticleService articleService;
  List<Question> questions = [];
  List<Article> articles = [];

  @override
  void initState() {
    super.initState();
    questionService = Dime.inject<QuestionService>();
    articleService = Dime.inject<ArticleService>();
    articleService.findAllRatedArticles().then((lst) {
      setState(() {
        articles = lst;
      });
    });
    questionService.fetchAllQuestions().then((lst) {
      setState(() {
        questions = lst ?? [];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test data"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, i) {
                return Container(
                  padding: EdgeInsets.all(16),
                  child: Text("${questions[i].question}"),
                );
              },
              itemCount: questions.length,
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, i) {
                return Container(
                  padding: EdgeInsets.all(16),
                  child: Text("${articles[i].title}"),
                );
              },
              itemCount: articles.length,
            ),
          )
        ],
      ),
    );
  }
}
