import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ytube_clone/core/colors/colors.dart';
import 'package:ytube_clone/core/constants/const.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 5, right: 10),
      child: Row(
        children: [
          const SizedBox(
            width: 30,
            height: 30,
            child: Image(
                image: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/YouTube_full-color_icon_%282017%29.svg/800px-YouTube_full-color_icon_%282017%29.svg.png')),
          ),
          kwidth2,
          Text(
            'YouTube',
            style: GoogleFonts.leagueGothic(
              fontSize: 30,
              letterSpacing: -0.5,
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.cast,
            color: kWhiteColor,
          ),
          kwidth15,
          const Icon(
            Icons.notifications_outlined,
            color: kWhiteColor,
            size: 28,
          ),
          kwidth15,
          const Icon(
            Icons.search_outlined,
            color: kWhiteColor,
            size: 28,
          ),
          kwidth15,
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://www.babycenter.com/ims/2019/10/Zia-16-Edit_4x3.jpg'),
            radius: 14,
          )
        ],
      ),
    );
  }
}
