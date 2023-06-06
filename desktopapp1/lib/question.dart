import 'package:flutter/material.dart';
import './revison.dart';

class question extends StatelessWidget
{
  @override
  String questiontext;
  question(this.questiontext);
  void display()
  {
    print(questiontext);
  }

  Widget build(BuildContext context)
  {
    return Text(questiontext);
  }
}