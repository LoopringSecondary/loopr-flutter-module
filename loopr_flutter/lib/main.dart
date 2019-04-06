import 'package:flutter/material.dart';
import 'MyHomePage.dart';
import 'QRCodeApp.dart';

// Android
void main() => runApp(_widgetForRoute("qrCode"));

Widget _widgetForRoute(String route) {
  print("_widgetForRoute $route");
  switch (route) {
    case 'qrCode':
      return QRCodeApp();
    default:
      return MyApp();
  }
}

// iOS
// https://github.com/flutter/flutter/issues/22356
@pragma('vm:entry-point')
void qrCode() => runApp(QRCodeApp());

// Default widget
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => MyHomePage(title: 'Flutter Demo Home Page'),
        '/second': (context) => MyHomePage(title: 'second'),
      },
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in a Flutter IDE). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
    );
  }
}
