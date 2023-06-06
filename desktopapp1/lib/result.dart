import 'package:flutter/material.dart';
import './revison.dart';

class Result extends StatelessWidget
{
  final VoidCallback reset;
  final  totalscore;
  Result(this.totalscore,this.reset);
  String get resultphrase
  {
    var resulttext;
    if(totalscore>=17)
      {
        resulttext='you are worst';
      }
    else if(totalscore>=8)
      {
        resulttext='you are waste';
      }
    else
      {
        resulttext='you are bad';
      }
    return resulttext;
  }

  Widget build(BuildContext context)
  {
    return Center(child: Column(
      children: [
        Text(resultphrase,textAlign: TextAlign.start,
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        TextButton(onPressed:reset , child: Text('Restart quiz'))
      ],
    ),);

  }
}

class locationslecet extends StatelessWidget {
  const locationslecet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blue,
    );
  }
}
