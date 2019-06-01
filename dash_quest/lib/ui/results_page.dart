import 'package:dash_quest/model/question.dart';
import 'package:dash_quest/ui/learn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResultsPage extends StatelessWidget {
  List<QuestionResponse> results = [];

  ResultsPage(this.results);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "You are a beginner.",
              style: Theme.of(context).textTheme.display1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: ListView.builder(
                  itemCount: results.length,
                  itemBuilder: (ctx, i) {
                    var response = results[i];
                    return Row(
                      children: <Widget>[
                        Text(
                          "${response.question}",
                          style: Theme.of(context).textTheme.caption,
                        ),
                        (response.answerItem.id ==
                                response.question.correctAnswerId)
                            ? Icon(Icons.check_circle)
                            : Icon(Icons.remove_circle_outline),
                      ],
                    );
                  }),
            ),
          ),
          Center(
            child: FlatButton(
              child: Text("Learn"),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (c) => LearnPage()));
              },
            ),
          )
        ],
      ),
    );
  }
}
