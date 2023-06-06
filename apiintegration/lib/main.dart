import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as Http;
void  main()
{
  runApp(Hompage());

}

class Hompage extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: apicreate());
  }
}
String? stringresponse;
Map? mapresponse;
Map? dataresponse;

class apicreate extends StatefulWidget
{
  State<StatefulWidget>createState()
  {
    return apicreateState();

  }

}

class apicreateState extends State<apicreate>
{

  Future apicall() async
  {
    Http.Response response;
    response= await Http.get(Uri.parse("https://reqres.in/api/users?page=2"));
    if(response.statusCode==200)
      {
        setState(() {
        // stringresponse =response.body;
         mapresponse=json.decode(response.body);
         dataresponse=mapresponse!['data'][5]['email'];

        });
      }
  }
@override
   initState() {
    apicall();
    super.initState();
  }

   Widget build(BuildContext context)
  {


    return Scaffold(
      appBar: AppBar(title: Text('API INTEGRATION'),),
      body: ListView.builder(itemBuilder: (context, index)

  {   return Container(

  color: Colors.white,
  child: Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.network(mapresponse!['data'][5]['avatar']),
      ),
      Text(mapresponse!['data'][0]['first_name'].toString())
    ],
  ),
  );


  },itemCount: mapresponse!['data']==null ?0:mapresponse!['data']?.length,

      ));
  }

}





