import 'package:flutter/material.dart';
import 'package:ytube_clone/core/colors/colors.dart';
import 'package:ytube_clone/presentation/main_page/screen_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'You Tube',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.grey,
        scaffoldBackgroundColor: backgroundColor,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      home: const ScreenMainPage(),
    );
  }
}
