import 'package:attendance_tracking_system/WIDGETS/reusablewidgets.dart';
import 'package:flutter/material.dart';



class apply extends StatefulWidget {
  const apply({Key? key}) : super(key: key);

  @override
  State<apply> createState() => _applyState();
}

class _applyState extends State<apply> {
  @override
  Widget build(BuildContext context) {
    var myheight=MediaQuery.of(context).size.height;
    var mywidth=MediaQuery.of(context).size.width;
    print(myheight.toString());
    print(mywidth.toString());
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Expanded(flex: 4,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.shade900,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25))
                    ),
                    
                    height: myheight,
                      width: mywidth,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [Positioned( top: myheight/100,left: 100,
                          child: Text('Apply Leave',style: TextStyle(fontSize:30,fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                        ),
                        Positioned(top: MediaQuery.of(context).size.height/13,
                            left: MediaQuery.of(context).size.width/3,
                            child:  Image.asset('Assets/images/profileimage.png')),
                          Positioned(top:myheight/3.6, left: mywidth/5,
                              child: Text('Employee Name:Thirumoorthi M',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),)),
                          Positioned(top: myheight/3.2,left: mywidth/5,
                              child: Text('Employee id     : 10801',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),))
                       ],
                      
                    )
                  )),
              Expanded(flex: 4,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(15),
                    color: Colors.white,
                    child: Column(mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text('Request Detail'),
                      Row(
                        children: [Container(color: Colors.red,
                            height: 100,
                            width: 50,



                            child: reuse())],
                      )],
                    ),
                  )),
              Expanded(flex: 2,
                  child:Container(



                  ))
            ],
          ),
        ),
      ),
    );
  }

}



