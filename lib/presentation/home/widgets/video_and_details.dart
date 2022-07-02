import 'package:flutter/material.dart';
import 'package:ytube_clone/core/colors/colors.dart';
import 'package:ytube_clone/core/constants/const.dart';
import 'package:ytube_clone/presentation/widgets/main_text_widget.dart';
import 'package:ytube_clone/presentation/widgets/sub_text_widget.dart';

class VideoAndDetailsWidget extends StatelessWidget {
  const VideoAndDetailsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 208,
              color: kWhiteColor,
              child: const Image(
                image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9Y-TK4c5xpXpDMmPEUNcIWMHdkbYkeCPb2GHofAjkGGxlAguWwo-L0H1N-NqBwb-sLGM&usqp=CAU',
                ),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 8,
              right: 8,
              child: Container(
                width: 32,
                height: 13,
                decoration: BoxDecoration(
                    color: kBlackColor.withOpacity(.8),
                    borderRadius: BorderRadius.circular(3)),
                child: const Center(
                  child: Text(
                    '2:25',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 8, bottom: 28),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://image.tmdb.org/t/p/w500/8AT3qDRakZQSZ6HVj7sQFUzN07N.jpg'),
                radius: 23,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const MainTextWidget(
                      title: 'Pyali Movie Official Trailer | Dulqer Salman |',
                    ),
                    kHeight5,
                    Row(
                      children: const [
                        SubTextWidget(title: 'Dulquer Salman'),
                        kwidth2,
                        SubTextWidget(title: '.'),
                        kwidth2,
                        SubTextWidget(title: '100K views'),
                        kwidth2,
                        SubTextWidget(title: '.'),
                        kwidth2,
                        SubTextWidget(title: '20 hours ago'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
