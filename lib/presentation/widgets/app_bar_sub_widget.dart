import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ytube_clone/core/constants/const.dart';

class AppBarSubWidget extends StatelessWidget {
  const AppBarSubWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text('History'),
        Spacer(),
        Icon(Icons.cast),
        kwidth20,
        Icon(Icons.search),
        kwidth20,
        FaIcon(
          FontAwesomeIcons.ellipsisVertical,
          size: 18,
        ),
        kwidth20
      ],
    );
  }
}
