import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ytube_clone/core/colors/colors.dart';
import 'package:ytube_clone/core/constants/const.dart';
import 'package:ytube_clone/presentation/widgets/main_text_widget.dart';
import 'package:ytube_clone/presentation/widgets/sub_text_widget.dart';

class HistoryVideoCard extends StatelessWidget {
  const HistoryVideoCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: SizedBox(
        height: 95,
        child: Row(
          children: [
            const SizedBox(
              height: 90,
              width: 155,
              child: Image(
                  image: NetworkImage(
                      'https://images.hindustantimes.com/img/2021/12/18/550x309/virat_kohli_india1_1639822225902_1639822231637.jpg')),
            ),
            kWidth15,
            SizedBox(
                height: 90,
                width: 170,
                child: Row(
                  children: [
                    SizedBox(
                      width: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          kHeight10,
                          MainTextWidget(
                              title:
                                  'Cricket videos of indian team | Test cricket |BCCI'),
                          kHeight5,
                          SubTextWidget(title: 'Channel name'),
                          SubTextWidget(title: "1.5 Views")
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 50, left: 8),
                      child: FaIcon(
                        FontAwesomeIcons.ellipsisVertical,
                        color: kWhiteColor,
                        size: 14,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
