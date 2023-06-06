import 'package:flutter/material.dart';
class testdropdown extends StatefulWidget {
  const testdropdown({Key? key}) : super(key: key);

  @override
  State<testdropdown> createState() => _testdropdownState();
}

class _testdropdownState extends State<testdropdown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('test page'),),
      body: Container(
        height:MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.blue,
        child: Center(
        child: Padding(
            padding: EdgeInsets.all(30),
            child: DropdownButton<String>(
              items: <String>['CASUAL LEAVE' , 'FORMAL LEAVE' , 'LOSS OF PAY'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
          ),
        ),
      ),

    );
  }
}

class con extends StatefulWidget {
  const con({Key? key}) : super(key: key);

  @override
  State<con> createState() => _conState();
}

class _conState extends State<con> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello'),),
      body: Center(
        child: Container(
          
          height: 30,
          width: 200,
          color: Colors.blue,
          padding: EdgeInsets.all(5),
          child: Center(child: DropdownButton<String>(

            items: <String>['A', 'B', 'C', 'D'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (_) {},
          )),
        ),
      ),
    );
  }
}
