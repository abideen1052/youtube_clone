import 'package:flutter/material.dart';

class CreateWidget extends StatelessWidget {
  const CreateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Create',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
