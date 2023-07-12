import 'package:flutter/material.dart';

class Question extends StatelessWidget{
  final String questionText; // Final used as we are working with Stateless Widgets and so the text once stored in questionText is not altered

  Question(this.questionText);

  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(questionText,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 28),),
    );
  }
}