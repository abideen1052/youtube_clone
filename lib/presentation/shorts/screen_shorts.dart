import 'package:flutter/material.dart';

class ScreenShorts extends StatelessWidget {
  const ScreenShorts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Shorts',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
