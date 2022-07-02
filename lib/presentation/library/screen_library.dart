import 'package:flutter/material.dart';

class ScreenLibrary extends StatelessWidget {
  const ScreenLibrary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Library',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
