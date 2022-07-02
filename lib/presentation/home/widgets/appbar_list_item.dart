import 'package:flutter/material.dart';
import 'package:ytube_clone/core/colors/colors.dart';

class AppBarItemWidget extends StatelessWidget {
  final String title;
  final double size;
  const AppBarItemWidget({
    Key? key,
    required this.title,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kGreyItemColor,
      ),
      width: size,
      height: 34,
      child: Center(
        child: Text(title),
      ),
    );
  }
}
