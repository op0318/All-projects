import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'amplifyconfiguration.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  void _configureAmplify() async {
    try {
      await Amplify.addPlugin(AmplifyAuthCognito());
      await Amplify.configure(amplifyconfig);
      print('Successfully configured');
    } on Exception catch (e) {
      print('Error configuring Amplify: $e');
    }
    Future<void> signOutCurrentUser() async {
      try {
        await Amplify.Auth.signOut();
      } on AuthException catch (e) {
        print(e.message);
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Authenticator(
      initialStep: AuthenticatorStep.signUp,
      child: MaterialApp(
        // set the default theme
        theme: ThemeData.from(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.red,
            backgroundColor: Colors.white,
          ),
        ).copyWith(
          indicatorColor: Colors.red,
        ),
        // set the dark theme (optional)
        darkTheme: ThemeData.from(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.red,
            backgroundColor: Colors.black,
            brightness: Brightness.dark,
          ),
        ),
        // set the theme mode to respond to the user's system preferences (optional)
        themeMode: ThemeMode.system,
        builder: Authenticator.builder(),
        home: Scaffold(appBar: AppBar(title: Text("Welcome"),),
          body: Center(
            child: Text('You are logged in!'),
          ),
        ),


      ),
    );
  }
}




