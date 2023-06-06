import 'dart:async';

import 'package:attendance_tracking_system/PAGES/empidpage.dart';
import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Text('ATS');
    Timer(Duration(seconds:10),()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>empid())));
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:Center(
        child: Text('ATS',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
      ),
      ) );
  }
}
