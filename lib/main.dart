import 'package:flutter/material.dart';

import './Quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp()); // flutter automatically calls the build method on running the widget, it also provides the context object
}

// Quiz Application
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  final _questions = const [
    {'questionText':'What\'s your favourite color?','answers':[{'answerText':'Red','score':8},{'answerText':'Yellow','score':8},{'answerText':'Blue','score':8}]},
    {'questionText':'What\'s your favourite animal?','answers':[{'answerText':'Elephant','score':8},{'answerText':'Lion','score':8},{'answerText':'Snake','score':8},{'answerText':'Rabbit','score':8}]},
    {'questionText':'Who\'s the best?','answers':[{'answerText':'Kishan','score':8},{'answerText':'I','score':8},{'answerText':'Me','score':8},{'answerText':'Myself','score':8}]}
  ];
  var _questionIndex = 0; // Underscore before anything changes the access from public to private, meaning that it can be used only in this code file
  var _finalScore = 0;

  void _restartQuiz(){
    setState(() {
      _questionIndex = 0;
      _finalScore = 0;
    });
  }

  void _answerQuestion(int score){
    _finalScore += score;

    setState(() { // This is an anonymous function, used to set a new state
      //setState updates the widget by calling its build method again
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if(_questionIndex < _questions.length) {
      print("We have more questions!");
    }
    // print("Your score is :" + finalScore);
  }

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quiz Application'),),
        body: _questionIndex<_questions.length ?
            Quiz(_questions, _questionIndex, _answerQuestion as void Function(int))
        : Result(_finalScore, _restartQuiz)
      ),
    );
  }
}





// void main() => runApp(MyApp()); // Arrow functions can be used for single line functions
// Ctrl + Space to get a list of main arguments

// First Flutter Application (with AppBar and body):
// class MyApp extends StatelessWidget{ // MyApp is our widget
//   @override // This is a decorator that indiacates that we are deliberately over writing the default build() method
//   Widget build(BuildContext context) { // context is an object of type BuildContext
//     // return MaterialApp(home: Text('Hello World!!!'),); // home is a name argument
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('My First App'),
//         ),
//         body: Text('Hello World, this is my first Flutter Application'),
//       ),
//     );
//   }
// }