import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int Resultscore;
  final Function resethandler;
  Result(this.Resultscore, this.resethandler);
  void tyFunctionWrapper() {
    resethandler();
  }

  String get resultPhrase {
    String resulttext;
    if (Resultscore == 50) {
      resulttext = "\nYOUR ARE A WEEB";
    } else if (Resultscore > 50) {
      resulttext = "\nOTAKU IN THE HOUSE !!";
    } else {
      resulttext = "\nSTILL A NEWBIE";
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(15),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(resultPhrase,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                  color: Color.fromRGBO(104, 5, 185, 1),
                ),
                textAlign: TextAlign.center),
            ElevatedButton(
              child: Text('Restart Quiz'),
              onPressed: tyFunctionWrapper,
              style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromRGBO(116, 24, 192, 1)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
