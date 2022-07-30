import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ytube_clone/core/colors/colors.dart';

class HistoryShortsCard extends StatelessWidget {
  const HistoryShortsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        SizedBox(
          height: 135,
          width: 93,
          child: Image(
            image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkeHl9ho3_Cj26lQ1CjHkLBQluQ_SQ0pAcUw&usqp=CAU',
            ),
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          child: SizedBox(
            width: 93,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Test Cricket India',
                style: TextStyle(color: kWhiteColor),
              ),
            ),
          ),
        ),
        Positioned(
          right: 5,
          top: 5,
          child: FaIcon(
            FontAwesomeIcons.ellipsisVertical,
            color: kWhiteColor,
            size: 14,
          ),
        ),
      ],
    );
  }
}
