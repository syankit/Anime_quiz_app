import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answertext;
  Answer(this.selectHandler, this.answertext); //constructor
  void myFunctionWrapper() {
    selectHandler();
  }

  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: ElevatedButton(
        onPressed: () => selectHandler(),
        child: Text(answertext),
        style: ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll(Color.fromARGB(255, 116, 24, 192)),
        ),
      ),
    );
  }
}
