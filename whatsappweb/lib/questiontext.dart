import 'package:flutter/material.dart';
import './main.dart';
class question extends StatelessWidget
{
  String questiontext;
  question(this.questiontext);
  @override
  Widget build(BuildContext context)
  {
    return Center(child: Text(questiontext));
  }
}

