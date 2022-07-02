import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:ytube_clone/core/colors/colors.dart';

class SubTextWidget extends StatelessWidget {
  final String title;
  const SubTextWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      title,
      style: GoogleFonts.roboto(
        fontSize: 12,
        color: kGreyColor,
      ),
    );
  }
}
