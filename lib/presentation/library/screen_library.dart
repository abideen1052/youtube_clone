import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ytube_clone/core/colors/colors.dart';
import 'package:ytube_clone/core/constants/const.dart';
import 'package:ytube_clone/presentation/library/widgets/history_widget.dart';
import 'package:ytube_clone/presentation/widgets/app_bar_widget.dart';

class ScreenLibrary extends StatelessWidget {
  const ScreenLibrary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const SliverAppBar(
            floating: true,
            snap: true,
            toolbarHeight: 48,
            backgroundColor: backgroundColor,
            flexibleSpace: AppBarWidget(),
          )
        ],
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15, left: 10),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.history,
                        size: 30,
                        color: kWhiteColor,
                      ),
                      kwidth10,
                      Text(
                        'History',
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        'VIEW ALL',
                        style: TextStyle(color: kBlueColor, fontSize: 15),
                      )
                    ],
                  ),
                ),
                kHeight10,
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        HistoryWidget(),
                        HistoryWidget(),
                        HistoryWidget(),
                        HistoryWidget(),
                        HistoryWidget(),
                        HistoryWidget(),
                        HistoryWidget(),
                      ],
                    ),
                  ),
                ),
                const Divider(
                  thickness: 1,
                  color: kGreyItemColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
