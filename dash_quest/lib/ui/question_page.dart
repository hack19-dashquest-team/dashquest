import 'package:dash_quest/model/question.dart';
import 'package:dash_quest/service/question_service.dart';
import 'package:dash_quest/ui/Quiz.dart';
import 'package:dash_quest/ui/results_page.dart';
import 'package:dime/dime.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/widgets.dart' as prefix0;

class InitialQuestionsPage extends StatefulWidget {
  @override
  _InitialQuestionsPageState createState() => _InitialQuestionsPageState();
}

class _InitialQuestionsPageState extends State<InitialQuestionsPage> {
  QuestionService questionService;
  int index = 0;
  List<Question> allQuestions = [];

  @override
  void initState() {
    super.initState();
    questionService = Dime.inject();
    questionService.clearResponses();
    questionService.fetchAllQuestions().then((lst) {
      setState(() {
        allQuestions = lst;
        index = 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (allQuestions.length <= index) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Loading..."),
        ),
        body: LinearProgressIndicator(),
      );
    } else {
      var question = allQuestions[index];
      return Scaffold(
        appBar: AppBar(
          title: Text("Question $index / ${allQuestions.length}"),
        ),
        body: Quiz(
          question,
          onAnswer: (answer) async {
            await questionService.recordAnswer(question, answer);
            if (allQuestions.length - 1 > index) {
              setState(() {
                index = index + 1;
              });
            } else {
              // complete
              var responses = await questionService.getResponses();
              prefix0.Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (c) => ResultsPage(responses)));
            }
          },
        ),
      );
    }
  }
}
