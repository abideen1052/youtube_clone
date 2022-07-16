import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ytube_clone/core/colors/colors.dart';
import 'package:ytube_clone/core/constants/const.dart';
import 'package:ytube_clone/presentation/widgets/sub_text_widget.dart';

class LibraryTileWidget extends StatelessWidget {
  const LibraryTileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 168,
      child: Column(
        children: [
          SizedBox(
            height: 55,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  const Icon(
                    Icons.video_library_outlined,
                    size: 25,
                    color: kWhiteColor,
                  ),
                  kwidth15,
                  Text(
                    'Your videos',
                    style: GoogleFonts.roboto(
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 55,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  const Icon(
                    Icons.download,
                    size: 25,
                    color: kWhiteColor,
                  ),
                  kwidth15,
                  Padding(
                    padding: const EdgeInsets.only(top: 13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Downloads',
                          style: GoogleFonts.roboto(
                            fontSize: 17,
                          ),
                        ),
                        const SubTextWidget(title: '20 recommendations')
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 150),
                    child: FaIcon(
                      FontAwesomeIcons.solidCircleCheck,
                      color: kWhiteColor,
                      size: 22,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 55,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  const Icon(
                    Icons.local_movies_outlined,
                    size: 25,
                    color: kWhiteColor,
                  ),
                  kwidth15,
                  Text(
                    'Your movies',
                    style: GoogleFonts.roboto(
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
