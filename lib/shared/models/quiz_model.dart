import 'package:dev_quiz/shared/models/question_model.dart';

enum Level { facil, medio, dificil, perito }

class QuizModel {
  final String title;
  final String imagem;
  final Level level;
  final List<QuestionModel> questions;
  final int questionAnswered;

  QuizModel({
    required this.title,
    required this.questions,
    this.questionAnswered = 0,
    required this.imagem,
    required this.level,
  });
}
