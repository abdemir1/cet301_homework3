import 'Question.dart';
import 'Option.dart';

class QuizManager {
  QuizManager() {
    _questions.add(Question('Hangisi bir sebzedir?', [
      Option('Elma', 0),
      Option('Patlıcan', 10),
      Option('Üzüm', 0),
      Option('Muz', 0),
    ]));

    _questions.add(Question('Hangisi bir spor dalı değildir?', [
      Option('Masa Tenisi', 0),
      Option('Yüzme', 0),
      Option('Futbol', 0),
      Option('Takım', 10),
    ]));
    _questions.add(Question('Hangisi bir voleybolcudur?', [
      Option('Cristiano Ronaldo', 0),
      Option('Naz Aydemir Akyol', 10),
      Option('İbrahim Kutluay', 0),
      Option('Micheal Phelps', 0),
    ]));

    _questions.add(Question('Hangi harf alfabede en son gelir?', [
      Option('A', 0),
      Option('B', 0),
      Option('C', 0),
      Option('D', 10),
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