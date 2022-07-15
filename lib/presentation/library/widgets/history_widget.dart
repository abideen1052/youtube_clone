import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ytube_clone/core/colors/colors.dart';
import 'package:ytube_clone/core/constants/const.dart';
import 'package:ytube_clone/presentation/widgets/main_text_widget.dart';
import 'package:ytube_clone/presentation/widgets/sub_text_widget.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 155,
      width: 160,
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 75,
              child: Image(
                  image: NetworkImage(
                      'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt1e40cf090d5ff27e/624359b4aa92be731a5098ad/bola_3_-_OFFICIAL_MATCH_BALL_WORLD_CUP_2022.jpg')),
            ),
            kHeight5,
            Row(
              children: [
                SizedBox(
                  width: 125,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      MainTextWidget(
                        title:
                            "Whats's Inside 2020 FIFA World Cup Football AL RIHLA",
                      ),
                      kHeight5,
                      SubTextWidget(
                        title: 'Channel Name',
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5, bottom: 33),
                  child: FaIcon(
                    FontAwesomeIcons.ellipsisVertical,
                    color: kWhiteColor,
                    size: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
