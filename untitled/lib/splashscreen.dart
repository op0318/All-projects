import 'package:flutter/material.dart';
import 'dart:async';



class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome"),
        
      ),body:Center(
      child:(Image.asset("assets/images/course.png")),
    ),

    );
  }
}

class stack extends StatelessWidget {
  const stack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('STACK'),),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    
                    height: 500,
                    width: 500,
                    color: Colors.red,
                  ),Container(
                    height: 300,
                    width: 300,
                    color: Colors.blue,

                  ),
                  Positioned(
                    left: 0,
                    width: 300,
                    child: Container(
                      child: Row(

                        children: [Padding(padding: EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.add),),

                          Padding(padding: EdgeInsets.only(left: 15.0),child: Icon(Icons.add),)
                          ],
                      ),
                      height: 150,
                      width: 150,
                      color: Colors.amber,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

