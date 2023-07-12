import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final int totalScore;
  final VoidCallback resetHandler;
  Result(this.totalScore, this.resetHandler);

  String get resultPhrase{
    return 'Your score is '+ (this.totalScore).toString();
  }

  Widget build(BuildContext context){
    return Center(
      child : Column(
        children : [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text('Reset Quiz'),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: this.resetHandler,
          ),
        ]
      )
    );
  }
}