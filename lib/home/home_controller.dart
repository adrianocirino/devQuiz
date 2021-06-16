import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/home/home_state.dart';
import 'package:dev_quiz/shared/models/awnser_model.dart';
import 'package:dev_quiz/shared/models/question_model.dart';
import 'package:dev_quiz/shared/models/quiz_model.dart';
import 'package:dev_quiz/shared/models/user_model.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {

    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
  
    user = UserModel(
      name: "Adriano Cirino da Silva",
      photoUrl: "https://avatars.githubusercontent.com/u/19496139?v=4",
    );
    state = HomeState.sucess;

  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
        title: "NLW 5 Flutter",
        imagem: AppImages.blocks,
        level: Level.facil,
        questionAnswered: 1,
        questions: [
          QuestionModel(
            title: "Está curtindo o flutter ?",
            awnsers: [
              AwnserModel(title: "Estou curtindo"),
              AwnserModel(title: "Estou adorando"),
              AwnserModel(title: "Amando flutter"),
              AwnserModel(title: "Show de bola!", isRight: true),
            ]
          ),
          QuestionModel(
            title: "Está curtindo o flutter ?",
            awnsers: [
              AwnserModel(title: "Estou curtindo"),
              AwnserModel(title: "Estou adorando"),
              AwnserModel(title: "Amando flutter"),
              AwnserModel(title: "Show de bola!", isRight: true),
            ]
          ),
        ],
      )
    ];
    state = HomeState.sucess;
  }
}
