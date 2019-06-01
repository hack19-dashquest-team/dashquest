import 'package:dash_quest/di.dart';
import 'package:dash_quest/ui/data_test_page.dart';
import 'package:dash_quest/ui/question_page.dart';
import 'package:dime/dime.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  Fimber.plantTree(DebugTree());
  var dbPath = (await getApplicationDocumentsDirectory()).path;
  Dime.installModule(DemoModule(dbPath));
  runApp(DashQuestApp());
}

class DashQuestApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dash Quest',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashQuestPage(),
    );
  }
}

class DashQuestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dash Quest"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Center(
                  child: Text(
                    "START HERE",
                    style: Theme
                        .of(context)
                        .textTheme
                        .display2,
                  )),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => InitialQuestionsPage()),
                );
              },
            ),
            FlatButton(
              child: Text("Test data - remove this button"),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctx) => DataTestPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
