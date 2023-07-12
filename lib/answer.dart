import 'package:flutter/material.dart';

class Answer extends StatelessWidget{

  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor:Colors.blue,
        ),
        child: Text(this.answerText),
        onPressed: selectHandler, // We don't put () as we don't want to execute the method, we are passing only a pointer to the method
      ),
    );
  }
}