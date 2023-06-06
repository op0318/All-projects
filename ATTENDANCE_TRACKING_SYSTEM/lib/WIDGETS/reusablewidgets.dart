
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class reuse extends StatefulWidget {
  const reuse({Key? key}) : super(key: key);

  @override
  State<reuse> createState() => _reuseState();
}

class _reuseState extends State<reuse> {
  @override

  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,

      child: DropdownButton(


          focusColor: Colors.grey,
          underline:
          Center(child: Text('Leave Type')),
          items: <String>['LEAVE TYPE','CASUAL LEAVE','FORMAL LEAVE'].map((String value)
          {
            return DropdownMenuItem<String>(
                value: value,
                child: Text(value));
          }).toList(),
          onChanged: (_){}),
    );
  }
}

