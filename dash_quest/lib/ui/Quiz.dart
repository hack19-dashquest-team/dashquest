//Quiz UI widgets
import 'package:dash_quest/model/question.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef OnAnswer = Function(AnswerItem answer);

class Quiz extends StatelessWidget {
  final Question question;
  final OnAnswer onAnswer;

  Quiz(this.question, {this.onAnswer});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(question.question),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: question.answers.length,
            itemBuilder: (ctx, i) {
              return Card(
                child: MaterialButton(
                  onPressed: () {
                    if (onAnswer != null) {
                      onAnswer(question.answers[i]);
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 120,
                    padding: EdgeInsets.all(8),
                    child: _buildForAnswer(question.answers[i]),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
            width: double.infinity,
            child: RaisedButton(
              child: const Text('Results'),
              onPressed: () {
//Route to results page
              },
            )),
      ],
    );
  }

  Widget _buildForAnswer(AnswerItem answer) {
    if (answer.type == "text") {
      return Text(answer.data);
    } else if (answer.type == "image") {
      return Image.network(answer.data);
    } else {
      Fimber.w("Not supported type: ${answer.type}");
      return Text(answer.data);
    }
  }
}
