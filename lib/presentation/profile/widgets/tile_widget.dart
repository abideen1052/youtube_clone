import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ytube_clone/core/colors/colors.dart';

class TileWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const TileWidget({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: const VisualDensity(
        vertical: -1.5,
      ),
      horizontalTitleGap: 5,
      leading: Icon(
        icon,
        size: 22,
        color: kWhiteColor,
      ),
      title: Text(
        title,
        style: GoogleFonts.roboto(
          fontSize: 17,
          color: kWhiteColor,
        ),
      ),
    );
  }
}
