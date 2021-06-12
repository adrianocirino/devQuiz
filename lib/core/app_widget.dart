import 'package:dev_quiz/challenge/challenge_page.dart';
// import 'package:dev_quiz/home/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      home: ChallengePage(),
    );        
  }
}
