import 'dart:core';

import 'package:flutter/material.dart';
import 'package:desktopapp1/question.dart';
import 'package:desktopapp1/Answer.dart';
import 'package:desktopapp1/revison.dart';


class quiz extends StatelessWidget
{

  final List<Map<String,Object>> questions;
  final Function answerquestion;
  final int questionindex;

  quiz({required this.questions,required this.answerquestion,required this.questionindex});

Widget build(BuildContext context)
{
  return Column(

      children:[question(questions[questionindex]['questiontext']as String),
        SizedBox(height: 40),
        ...(questions[questionindex]['Answer']as List<Map<String,Object>>).map((answer){
          return Answer(()=>answerquestion(answer['score']), answer['text'] as String);


        }).toList(),

      ]
  );
}
}

