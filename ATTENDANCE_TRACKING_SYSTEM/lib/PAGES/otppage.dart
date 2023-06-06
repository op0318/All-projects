import 'package:flutter/material.dart';

class otp extends StatefulWidget {
  const otp({Key? key}) : super(key: key);

  @override
  State<otp> createState() => _otpState();
}

class _otpState extends State<otp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('Assets/images/lady.jpg'),
                fit: BoxFit.contain
                 ),color: Colors.blue),


          child:Text('welcome') ,));
  }
}
