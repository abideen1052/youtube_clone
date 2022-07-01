import 'package:flutter/material.dart';
import 'package:ytube_clone/presentation/main_page/screen_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'You Tube',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ScreenMainPage(),
    );
  }
}