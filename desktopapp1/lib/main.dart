

import 'dart:html';

import 'package:desktopapp1/Answer.dart';
import 'package:desktopapp1/revison.dart';
import 'package:flutter/material.dart';
import './question.dart';
import 'Answer.dart';
import './quiz.dart';
import './result.dart';
void main()=>runApp(MaterialApp(
    home:getkeys()

)

  );
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
             Result(totalscore,reset)
         ));

   }
 }


 class test extends StatefulWidget {
  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
   List<Map<String,dynamic>> Location=[
     {'location':[
       'Guindy Office',
       'Mepz office',
       'Tidel office',
       'Thanjavur office',
       'client location',
       'work from home']}
   ];


   List Locations=['Guindy office','Mepz office','Tidel office','','',''];




   @override
   Widget build(BuildContext context) {
     String currentoption=(Location[0]['location']as List<String>)[0];
     return Scaffold(body:
       Container(
         height: double.infinity,
         width: double.infinity,
         color: Colors.blue,
         child: Center(child:
         Container(
           padding: EdgeInsets.all(30),
           margin: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
           height: 600,
           width: double.infinity,
           color: Colors.white,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text('Select Location',style:
               TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
               SizedBox(height: 30,),

             SizedBox(height: 30,),
             Row(mainAxisAlignment: MainAxisAlignment.start,

               children: [


             SizedBox(width: 109,),
               Container( height: 50,width: 100,
                 decoration: BoxDecoration(

                 borderRadius: BorderRadius.circular(30),
                   border: Border.all(width: 2)),
                 child: TextButton
                   (style: ButtonStyle(),
                     onPressed: (){}, child: Text('Cancel',style: TextStyle(
                       fontSize: 25,
                         color:Colors.blueAccent),)),
               ),
               Container(
                 height: 30,width: 75,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                 child: ElevatedButton(style:ButtonStyle(),
                     onPressed: (){},child: Text('ok',style: TextStyle(fontSize: 20),)),
               )],)],
           ),


         )),
       ),

     );
   }
}

class getkeys extends StatelessWidget {








  @override
  Widget build(BuildContext context) {

    List location=[{'Guindy':10801},{'Mepz':10802},{'tidel':10803}];
    void Getkeys(List<Map> location)
    {
      location.keys.forEach((element)
      {
        print(element.toString());
      });
    }
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ElevatedButton(onPressed: (){getkeys(location);},child: Text('ok'),
        ),
    ),
      ));
  }
}















