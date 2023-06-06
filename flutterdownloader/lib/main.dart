import 'dart:isolate';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

void main()async {
 WidgetsFlutterBinding.ensureInitialized();
 await FlutterDownloader.initialize(debug:true);




  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter demo "),


      ),body: Center(
      child: Column (
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(child: Text("Start downloading"),
          color: Colors.redAccent
            ,textColor: Colors.white,
          onPressed: ()async{
            final status=await Permission.storage.request();
            if(status.isGranted)
              {
                final externelDir=await getExternalStorageDirectory();
               final id=await FlutterDownloader.enqueue(url:" https://firebasestorage.googleapis.com/v0/b/storage-3cff8.appspot.com/o/2020-05-29%2007-18-34.mp4?alt=media&token=841fffde-2b83-430c-87c3-2d2fd658fd41",
                savedDir: externelDir.path,
                fileName: "Download",
                showNotification: true,
                openFileFromNotification: true);

              }else
                {
print("permission denied");
                }
          },)
        ],
      ),
    ),
    );
  }
}
