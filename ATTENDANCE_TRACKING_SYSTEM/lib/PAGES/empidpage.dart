import 'package:attendance_tracking_system/PAGES/otppage.dart';
import 'package:flutter/material.dart';

class empid extends StatefulWidget {
  const empid({Key? key}) : super(key: key);

  @override
  State<empid> createState() => _empidState();
}

class _empidState extends State<empid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Container(
              child: Image.asset('Assets/images/SS.png'),
            ),
            SizedBox(height: 100,),
              Stack(
                clipBehavior: Clip.none,

                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(borderRadius:
                  BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),color: Colors.deepPurple),
                  ),
                  Positioned(
                  top: -7,


                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text('ATS'),
                    ),
                  )

                   ],
              )
           ],

          ),
        ),
      ),
    );
  }
}


class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  DateTime _dateTime=DateTime.now();
  void _showdatepicker()
  {
    showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1997),
        lastDate: DateTime(2025)
    ).then((value) => {
      setState(
              (){
                _dateTime=value!;
              })
    }






    );



  }

  Widget build(BuildContext context) {
    DateTime date=DateTime.now();
    return Scaffold(
      appBar: AppBar(title: Text("Hello"),),
      body:Container(

        child: Center(
          child: Column(
            children: [
              MaterialButton(
                color: Colors.blue,
                onPressed: (){
                  _showdatepicker();

                },child: Text('$_dateTime'),
              ),
              SizedBox(height: 30),
              Expanded(
                flex: 5,
                
                child: Container(
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 1,
                
                child: Container(color: Colors.brown),
              )

            ],
          ),
        ),
      )




    );
  }
}
class test2 extends StatefulWidget {
  const test2({Key? key}) : super(key: key);

  @override
  State<test2> createState() => _test2State();
}

class _test2State extends State<test2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(child:
      Column(

        children:[ Padding(padding: EdgeInsets.only(top: 30),child: Center(
          child: Image.asset('Assets/images/SS.png'),
        )),
          
          SizedBox(height: 80,),



          Container(

          height:700,
          width: 500,
          decoration: BoxDecoration(
            borderRadius:
            BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),),
              color: Colors.deepPurple
          ),

          child: Stack(
            alignment: Alignment.topRight,
            clipBehavior: Clip.none,
            children:<Widget> [
            Positioned(
                top:-65,
              left: 140,
              child: CircleAvatar(

                backgroundColor: Colors.deepPurple,

                child: CircleAvatar(
                  backgroundColor: Colors.white,
                    radius:55,child: Text('ATS',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                radius: 250/4,
              )
              ),
              Positioned(top: 100,
                  left: 80,
                  child:Container(
                    margin: EdgeInsets.only(left: 1),
                    height: 300,
                    width: 300,
                    color: Colors.deepPurple,

             child: Column(crossAxisAlignment: CrossAxisAlignment.start,
               children: [Text('Your employee id',style:
                 TextStyle(
                     fontWeight: FontWeight.bold,
                 fontSize: 15,color: Colors.white),),
               SizedBox(height: 25,),
               Text('please enter the employee id',style: TextStyle(color: Colors.white,fontSize: 15)),
                 Text('and confirm',style: TextStyle(fontSize: 15,color: Colors.white),),
                 SizedBox(height: 25),

                 SizedBox(width: 250,
                   child: Container(
                     decoration: BoxDecoration(color: Colors.white,
                         borderRadius: BorderRadius.all(Radius.circular(10),)),

                     child: TextField(decoration: InputDecoration(contentPadding: EdgeInsets.all(5),

                       border: OutlineInputBorder(

                         borderRadius: BorderRadius.all(Radius.circular(10))
                       )
                     ),

                     ),
                   ),
                 ),
                 SizedBox(height: 100)
               ],
             ),
                  )
              ),
              Positioned(
                top:450,
                  right: 40,


                    child: SizedBox(height: 40,width: 50,

                      child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Colors.white,),

                        child: OutlinedButton(
                            onPressed:(){
                            },
                            child: Icon(Icons.arrow_forward,color: Colors.deepPurple,)),
                      ),
                    ),
                  )


              ],
          ),
        ),
      ])

    ));
  }
}


class testleave extends StatefulWidget {
  const testleave({Key? key}) : super(key: key);

  @override
  State<testleave> createState() => _testleaveState();
}

class _testleaveState extends State<testleave> {
  @override

  Widget build(BuildContext context) {
    var myheight=MediaQuery.of(context).size.height;
    var mywidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height:myheight,
          width: mywidth,
          color: Colors.white,
          child: Column(

            
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.only(top: myheight/80),
                  child: Stack(

                  children: [Positioned(top:myheight/320,
                    left: mywidth/3.4,
                    child: Text('Apply Leave',style: TextStyle(fontSize:30,fontWeight: FontWeight.bold,color: Colors.white
                    ),),
                    
                  ),
                  Positioned(top: myheight/4,right: mywidth/-50,
                      child: IconButton(onPressed: (){},icon: Icon(Icons.notifications,color: Colors.white,),)),
                  Positioned(top: myheight/14,left: mywidth/2.8,
                      child: Image.asset('Assets/images/profileimage.png')),
                  Positioned(top: myheight/4.5,left: mywidth/4.6,
                      child: Text('Employee Name:Thirumoorthi M',
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),))
                    ,Positioned(top: myheight/3.9,left: mywidth/4.6,
                        child: Text('Employee Id        :10801',style: TextStyle(
                          fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white
                        ),))
                  
                  ],
                ),

                  decoration: BoxDecoration(color: Colors.blue.shade900,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
                  ),
),
                  

                ),

              Expanded(flex: 3,

                  child: Container(
                    color: Colors.white
                    ,
                    height: myheight,width: mywidth,
                    margin:  EdgeInsets.only(top: myheight/62.5,left:mywidth/62.5),
                    padding: EdgeInsets.only(left: mywidth*0.01),

                  child: Stack(
                    children: [
                      const Text('Personal Statics',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      Positioned(top: myheight/22,left:mywidth/40,
                        child: DropdownButton(
                          borderRadius:BorderRadius.all(Radius.circular(15)),
                          dropdownColor: Colors.blue,
                          focusColor: Colors.grey,
                            hint: const Text('  Leave Mode'),
                            items: <String>['CASUAL LEAVE','EMERGENCY LEAVE','LOSS OF PAY'].map((String value)
                            {
                              return DropdownMenuItem<String>
                                (value: value,child: Text(value),);
                            }).toList(), onChanged: (_){}),
                      ),
                      Positioned(top: myheight/22,left: mywidth/2,
                        child: DropdownButton(
                          focusColor: Colors.grey,
                            hint: const Text('  Leave Mode'),
                            items: <String>['CASUAL LEAVE','EMERGENCY LEAVE','LOSS OF PAY'].map((String value)
                            {
                              return DropdownMenuItem<String>
                                (value: value,child: Text(value),);
                            }).toList(), onChanged: (_){}),
                      ),
                      Positioned(top:myheight/8
                        ,left:mywidth/40 ,
                        child: Container(

                          color: Colors.blue,
                          child: Container(height: myheight/20,width: mywidth/2.4,
                            margin: EdgeInsets.all(myheight*0.004),
                            color: Colors.white,child: Center(child:
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Center(child: Text('     25/11/2022'),),
                                IconButton(onPressed: (){}, icon: Icon(Icons.calendar_today_outlined))
                              ],
                            )),),

                        ),),
                      Positioned(top:myheight/8
                        ,right:mywidth*0.041 ,
                        child: Container(height: myheight/17.5,width: mywidth/2.4,



                         color: Colors.blue,
                          child: Container(margin: const EdgeInsets.all(3),
                            color: Colors.white,child: Center(child:
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Center(child: Text('     25/11/2022'),),
                                IconButton(onPressed: (){}, icon: const Icon(Icons.calendar_today_outlined))
                              ],
                            )),),

                        ),),
                      Positioned(top: myheight*0.2,
                          child: const Text('Request details',style: TextStyle(fontWeight: FontWeight.bold),)),

                      Positioned(top: myheight*0.225,
                          child:
                      SizedBox(height: myheight*0.1,
                        width: mywidth*0.91,
                        child: const TextField(maxLines: 3,
                        decoration: InputDecoration(border: OutlineInputBorder()),),
                      ) ),

                      Positioned(top: myheight/2.6,left: mywidth/3.7,
                          child: ElevatedButton(

                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

                          maximumSize: const Size(250,80),
                          textStyle: const TextStyle(fontSize: 30),

                          backgroundColor: Colors.blue.shade900),

                        onPressed: () {  },child: const Text('Submit'),))



                    ],
                  ),)

                  ),
              Expanded(flex: 1,
                  child: Container())

            ],
          ),
        ),
      )
    );
  }
}

class bottom extends StatefulWidget {
  const bottom({Key? key}) : super(key: key);

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello'),),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.blue.shade900,
          borderRadius:BorderRadius.all(Radius.circular(25),

            )
        ),
        height:MediaQuery.of(context).size.height/9,
        width: MediaQuery.of(context).size.width/9,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [IconButton(onPressed: (){}, icon: Icon(Icons.drag_handle_sharp,color: Colors.white,)),
          Icon(Icons.home_outlined,color: Colors.white,),
          Icon(Icons.logout,color: Colors.white,)],
        ),
      ),


      ),
    );
  }
}

