import 'Question.dart';
import 'Option.dart';

class QuizManager2 {
  QuizManager2() {
    _questions.add(Question('Hangisi meyvedir?', [
      Option('Elma', 10),
      Option('Patlıcan', 0),
      Option('Kereviz', 0),
      Option('Kestane', -0),
    ]));

    _questions.add(Question('Hangisi bir spor dalıdır?', [
      Option('Voleybol', 10),
      Option('Top', 0),
      Option('Saha', 0),
      Option('Takım', 0),
    ]));
    _questions.add(Question('Hangisi bir futbolcudur?', [
      Option('Cristiano Ronaldo', 10),
      Option('Naz Aydemir Akyol', 0),
      Option('İbrahim Kutluay', 0),
      Option('Micheal Phelps', 0),
    ]));

    _questions.add(Question('Hangi harf alfabede önce gelir?', [
      Option('A', 10),
      Option('B', 0),
      Option('C', 0),
      Option('D', 0),
    ]));


    _questions.shuffle();
    for (var question in _questions) {
      question.options.shuffle();
    }
  }

  List<Question> _questions = [];
  int _score = 0;
  int currentQuestionId = 0;
  void nextQuestion(score) {

    if (currentQuestionId < _questions.length) {
      _score += score;
      currentQuestionId++;
    }
    print(currentQuestionId);
  }

  int getTotalScore() => _score;
  int getCurrentId() => currentQuestionId + 1;
  int totalQuestionNumber() => _questions.length;
  bool isFinished() {
    return currentQuestionId >= _questions.length;
  }

  Question getCurrentQuestion() {
    print('getCurrentQuestion $currentQuestionId');
    if (currentQuestionId < _questions.length) {
      return _questions[currentQuestionId];
    } else {
      return Question('', []);
    }
  }
}