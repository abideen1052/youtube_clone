import 'package:flutter/cupertino.dart';

import 'package:google_fonts/google_fonts.dart';

class MainTextWidget extends StatelessWidget {
  final String title;
  const MainTextWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      title,
      style: GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
