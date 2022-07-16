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
      height: 160,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: ListTile(
              visualDensity: VisualDensity(
                vertical: -3,
              ),
              horizontalTitleGap: 5,
              leading: const Icon(
                Icons.video_library_outlined,
                size: 25,
                color: kWhiteColor,
              ),
              title: Text(
                'Your videos',
                style: GoogleFonts.roboto(
                  fontSize: 17,
                  color: kWhiteColor,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: ListTile(
              visualDensity: const VisualDensity(
                vertical: -3,
              ),
              horizontalTitleGap: 5,
              leading: const Padding(
                padding: EdgeInsets.only(top: 4),
                child: Icon(
                  Icons.download,
                  size: 25,
                  color: kWhiteColor,
                ),
              ),
              title: Text(
                'Downloads',
                style: GoogleFonts.roboto(
                  fontSize: 17,
                  color: kWhiteColor,
                ),
              ),
              subtitle: const SubTextWidget(title: '20 recommendations'),
              trailing: const FaIcon(
                FontAwesomeIcons.solidCircleCheck,
                color: kWhiteColor,
                size: 22,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: ListTile(
              horizontalTitleGap: 5,
              leading: const Icon(
                Icons.local_movies_outlined,
                size: 25,
                color: kWhiteColor,
              ),
              title: Text(
                'Your movies',
                style: GoogleFonts.roboto(
                  fontSize: 17,
                  color: kWhiteColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
