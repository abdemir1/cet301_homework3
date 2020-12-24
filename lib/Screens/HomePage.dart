import 'package:flutter/material.dart';
import 'package:homework3/Screens/QuizPage.dart';
import 'package:homework3/Screens/QuizPage2.dart';
void gotoQuizPage(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => QuizPage()
  ));
}
void gotoQuizPage2(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => QuizPage2()
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CET301 HW3 QuizApp')
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: NetworkImage('https://cdn.pixabay.com/photo/2018/03/04/08/58/flower-3197493_1280.png'
            ),
            width: 200, height: 200 ,
          ),

          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Text('Merhaba, QuizAppe hoşgeldiniz.',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),

          RaisedButton(onPressed: (){gotoQuizPage(context);},
            color: Colors.pink,
            child: Text('1. Quize Başla'),
          ),

          Container(
              padding: EdgeInsets.all(20)),

          RaisedButton(onPressed: (){gotoQuizPage2(context);},
            color: Colors.pinkAccent,
            child: Text('2. Quize Başla'),
          ),
        ],
      ),
    );
  }
}
