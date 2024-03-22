import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
    OneSignal.initialize('2b0c20cb-21cd-4ab0-889d-04c609ef65d2');
    OneSignal.Notifications.requestPermission(true).then((value) {
      print('signal value: $value');
    }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SemcSoft",
      routes: {
        "/": (_) => WebviewScaffold(
          url: "https://www.semcsoft.com",
        ),
      },
    );
  }
}