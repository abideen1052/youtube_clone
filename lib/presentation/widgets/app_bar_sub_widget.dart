import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ytube_clone/core/constants/const.dart';

class AppBarSubWidget extends StatelessWidget {
  final String title;
  const AppBarSubWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title),
        const Spacer(),
        const Icon(Icons.cast),
        kWidth20,
        const Icon(Icons.search),
        kWidth20,
        const FaIcon(
          FontAwesomeIcons.ellipsisVertical,
          size: 18,
        ),
        kWidth20
      ],
    );
  }
}
