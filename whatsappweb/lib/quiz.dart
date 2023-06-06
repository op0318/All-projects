import 'package:flutter/material.dart';
import './main.dart';
import './Answer.dart';
import './questiontext.dart';
import './Answer.dart';
import './questiontext.dart';

class quiz extends StatelessWidget

{

final List<Map<String,Object>> questions;
int questionindex;
final Function answerquestion;
quiz(
    {
      required this.questions,
      required this.questionindex,
      required this.answerquestion
    });
@override
Widget build(BuildContext context)

  {
    return Column(
      children: [
        question(questions[questionindex]['questiontext']as String ),
        ...(questions[questionindex]['Answer']as List<Map<String,Object>>).map((answer) {
          return Answer(()=>answerquestion(answer['score']),answer['text'] as String);
        }).toList()
      ],
    );
  }
}