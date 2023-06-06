import 'package:flutter/material.dart';
import 'revison.dart';
class Answer extends StatelessWidget
{
  final VoidCallback selectHandler;
  final String answertext;
  Answer(this.selectHandler,this.answertext);



  Widget build(BuildContext context)
  {
    return
      Container(width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.yellow)),
                onPressed:selectHandler , child: Text(answertext)),
          ));
  }
}
