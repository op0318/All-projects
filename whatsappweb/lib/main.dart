

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsappweb/questiontext.dart';
import 'package:whatsappweb/quiz.dart';
import 'package:whatsappweb/result.dart';
import './Answer.dart';
void main()=>runApp(revision());
class revision extends StatefulWidget {

  @override
  State<StatefulWidget> createState()
  {
    return revisonState();
  }
}
class revisonState extends State<revision>
{

  var _questionindex=0;
  var totalscore=0;

  final  questions=[
    {'questiontext':'Whats your favourite color?',
      'Answer':[
        {'text':'red','score':10},
        {'text':'green','score':9},
        {'text':'blue','score':7},
        {'text':'yellow','score':5}]},
    {'questiontext':'Whats your favourite animal?',
      'Answer':[
        {'text':'lion','score':10},
        {'text':'cheetah','score':2},
        {'text':'wolf','score':3},
        {'text':'tiger','score':4}]},
  ];
  void Reset()
  {
    setState(() {
      _questionindex=0;
      totalscore=0;
    });
    print(_questionindex);
  }
  void answerquestion(int score)
  {
    totalscore+=score;
    setState(()
    {
      _questionindex=_questionindex+1;
    });
  }


  void reset()
  {
    _questionindex=0;
    totalscore=0;
  }
  Widget build(BuildContext thiru)
  {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('hello'),),
            body: _questionindex<questions.length?
            quiz(

              questions: questions,
              answerquestion: answerquestion,
              questionindex: _questionindex,):
            Result(totalscore)
        ));

  }
}







