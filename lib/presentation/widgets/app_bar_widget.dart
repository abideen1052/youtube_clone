import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ytube_clone/core/colors/colors.dart';
import 'package:ytube_clone/core/constants/const.dart';
import 'package:ytube_clone/presentation/profile/screen_profile.dart';

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
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/YouTube_full-color_icon_%282017%29.svg/800px-YouTube_full-color_icon_%282017%29.svg.png'))),
          kWidth2,
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
          kWidth15,
          const Icon(
            Icons.notifications_outlined,
            color: kWhiteColor,
            size: 28,
          ),
          kWidth15,
          const Icon(
            Icons.search_outlined,
            color: kWhiteColor,
            size: 28,
          ),
          kWidth15,
          const ProfileScreen()
        ],
      ),
    );
  }
}
