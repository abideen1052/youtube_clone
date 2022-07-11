import 'package:flutter/material.dart';
import 'package:ytube_clone/core/colors/colors.dart';
import 'package:ytube_clone/core/constants/const.dart';
import 'package:ytube_clone/presentation/widgets/main_text_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreenShorts extends StatelessWidget {
  const ScreenShorts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: List.generate(10, (index) {
        return Stack(
          children: [
            Container(
              color: Colors.accents[index],
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 18),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://image.tmdb.org/t/p/w500/8AT3qDRakZQSZ6HVj7sQFUzN07N.jpg'),
                    ),
                    kwidth5,
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: const MainTextWidget(title: 'Channel Name'),
                    ),
                    kwidth5,
                    SizedBox(
                      height: 25,
                      width: 99,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                        ),
                        onPressed: () {},
                        child: const Text('SUBSCRIBE'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(55, 10, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.photo_camera_outlined,
                            size: 28,
                            color: kWhiteColor,
                          ),
                          const SizedBox(
                            height: 309,
                          ),
                          const Icon(
                            Icons.thumb_up,
                            size: 28,
                            color: kWhiteColor,
                          ),
                          const Text('150'),
                          kHeight20,
                          const Icon(
                            Icons.thumb_down,
                            size: 28,
                            color: kWhiteColor,
                          ),
                          const Text(
                            'Dislike',
                            style: TextStyle(fontSize: 12),
                          ),
                          kHeight20,
                          const Icon(
                            Icons.comment,
                            size: 28,
                            color: kWhiteColor,
                          ),
                          const Text('  15'),
                          kHeight20,
                          const FaIcon(
                            FontAwesomeIcons.share,
                            size: 28,
                            color: kWhiteColor,
                          ),
                          const Text(
                            'Share',
                            style: TextStyle(fontSize: 12),
                          ),
                          kHeight20,
                          const FaIcon(
                            FontAwesomeIcons.ellipsis,
                            size: 28,
                            color: kWhiteColor,
                          ),
                          kHeight20,
                          Container(
                            height: 38,
                            width: 38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: kWhiteColor,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        );
      }),
    ));
  }
}
