import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:notes_application/Presentation/View/Screens/Splash.dart';

void main() {
  runApp(
    DevicePreview(
    enabled: true,
    builder: (BuildContext context) => const MyApp(),

  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: Splash(),
      ),
    );
  }
}
