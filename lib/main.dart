import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  // first func that excute out of all
  runApp(MyApp());
}

// void main() => runApp(MyApp());  only use for one expression function

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //stateless wid allow to create own widg which is class present in material package
  var _qindex = 0;
  var _totalScore = 0;
  List<Map<String, dynamic>> _ques = [
    {
      'questionText': ' What is the name of Studio Ghibli well-known mascot?',
      'answers': [
        {'text': 'Kiki', 'score': 0},
        {'text': 'Bakura', 'score': 0},
        {'text': 'Howls', 'score': 0},
        {'text': 'Totoro', 'score': 10}
      ],
    },
    {
      'questionText':
          'In Nurato, the main character, Naruto Uzumaki, is a host for the powerful Nine-Tales. What creature is the Nine-Tails?',
      'answers': [
        {'text': 'Wolf', 'score': 0},
        {'text': 'Fox', 'score': 10},
        {'text': 'Bear', 'score': 0},
        {'text': 'Cat', 'score': 0}
      ],
    },
    {
      'questionText':
          'In Howls Moving Castle, Sophie is transformed into an old woman by a witch. How old is Sophie as an old woman?',
      'answers': [
        {'text': '100', 'score': 0},
        {'text': '60', 'score': 0},
        {'text': '75', 'score': 10},
        {'text': '95', 'score': 0}
      ],
    },
    {
      'questionText':
          'In One Piece, Monkey D. Luffy originally sets out with the Straw Hat Pirates to become the pirate king on which ship?',
      'answers': [
        {'text': 'Going Merry', 'score': 10},
        {'text': 'Jolly Roger', 'score': 0},
        {'text': 'Thousand Sunny', 'score': 0},
        {'text': 'Ever Darker', 'score': 0}
      ],
    },
    {
      'questionText': 'Who Kills Bertholdt?',
      'answers': [
        {'text': 'Arim', 'score': 10},
        {'text': 'EREN YEAGER', 'score': 0},
        {'text': 'Levi', 'score': 0},
        {'text': 'Hange', 'score': 0}
      ],
    },
    {
      'questionText': 'Which of the following is not an evil Anime character?',
      'answers': [
        {'text': 'EREN YEAGER', 'score': 10},
        {'text': 'Light yagami', 'score': 10},
        {'text': 'Lelouch Lamperouge', 'score': 10},
        {'text': 'JOHN', 'score': 10}
      ]
    },
    {
      'questionText': 'Which of the following Anime is Nico Robin featured?',
      'answers': [
        {'text': 'Death Note', 'score': 0},
        {'text': 'Naruto', 'score': 0},
        {'text': 'Kill la Kill', 'score': 0},
        {'text': 'One Piece', 'score': 10}
      ]
    },
    {
      'questionText': 'What is Kira secret identity?',
      'answers': [
        {'text': 'L', 'score': 0},
        {'text': 'Ryuk', 'score': 0},
        {'text': 'Light Yagami', 'score': 10},
        {'text': 'Mello', 'score': 0}
      ],
    },
    {
      'questionText': 'Which of the following Anime characters has green hair?',
      'answers': [
        {'text': 'Killua', 'score': 0},
        {'text': 'Akame', 'score': 0},
        {'text': 'Chika', 'score': 0},
        {'text': 'Gon', 'score': 10}
      ],
    },
    {
      'questionText': 'Which of the following is a sport anime ?',
      'answers': [
        {'text': 'Haikyuu', 'score': 10},
        {'text': 'Blue Period', 'score': 0},
        {'text': 'JJK', 'score': 0},
        {'text': 'Mob Pyscho 100', 'score': 0}
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    void _resetQuiz() {
      setState(() {
        _qindex = 0;
        _totalScore = 0;
      });
    }

    void _ans(int score) {
      print(_totalScore);
      _totalScore = _totalScore + score;
      print(_totalScore);
      setState(() {
        _qindex++;
      });
      if (_qindex < _ques.length) {
        print("We have more questions");
      } else {
        print("No more questions!!");
      }
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'ANIME QUIZ APP',
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Color.fromARGB(255, 74, 0, 134),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(5),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://e0.pxfuel.com/wallpapers/217/204/desktop-wallpaper-nezuko-aesthetic-anime-anime-phone-cute-anime-chibi.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: _qindex < _ques.length
              ? Quiz(
                  ques: _ques,
                  ans: _ans,
                  qindex: _qindex,
                )
              : Result(_totalScore, _resetQuiz),
        ),
        backgroundColor: Color.fromARGB(255, 247, 212, 227),
      ),
    );
  }
}
