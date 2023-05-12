import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>> ques;
  final int qindex;
  final Function ans;
  Quiz({required this.ques, required this.ans, required this.qindex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          ques[qindex]['questionText'],
        ),
        ...(ques[qindex]['answers'] as List<Map<String, dynamic>>)
            .map((answer) {
          return Answer(() => ans(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
