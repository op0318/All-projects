import 'package:flutter/material.dart';
import './main.dart';

class Answer extends StatelessWidget
{

  final VoidCallback function;
  final String answertext;
  Answer(this.function,this.answertext);
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:function , child: Text(answertext));
  }
  }