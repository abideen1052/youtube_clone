import 'package:flutter/material.dart';
import 'package:ytube_clone/presentation/widgets/app_bar_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 90,
        color: Colors.transparent,
        child: Column(
          children: const [AppBarWidget()],
        ),
      ),
    );
  }
}
