import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final returnresult;

  Result(this.returnresult);

  String get resultphase {
    var resulttext;
    if (returnresult > 2) {
      resulttext = 'you are great';
    }
    if (returnresult > 5) {
      resulttext = 'you are totally wasted&This project succesfully created';
    }
    if (returnresult > 7) {
      resulttext = 'you are simply waste';
    }
    return resulttext;
  }


  Widget build(BuildContext context)
  {
    return Text(resultphase,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold));




  }
}