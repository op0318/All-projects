import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _amplifyconfigured=false;
  late AmplifyAuthCognito auth;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _configureamplify();
  }
void _configureamplify() async
{
if(!mounted) return;
auth=AmplifyAuthCognito();
await Amplify.addPlugin(auth);
try
    {
      await Amplify.configure(amplifyconfig);
    }on AmplifyAlreadyConfiguredException
{
  print('Already configured');

}
try {
  setState((){
    _amplifyconfigured=true;
  });

}catch(e)
  {
    print(e);
  }



}


  @override
  Widget build(BuildContext context) {
    return Container();

  }
}
