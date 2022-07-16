import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ytube_clone/core/colors/colors.dart';
import 'package:ytube_clone/core/constants/const.dart';
import 'package:ytube_clone/presentation/library/widgets/drop_down.dart';
import 'package:ytube_clone/presentation/library/widgets/history_tile_widget.dart';
import 'package:ytube_clone/presentation/library/widgets/history_widget.dart';
import 'package:ytube_clone/presentation/widgets/app_bar_widget.dart';
import 'package:ytube_clone/presentation/widgets/sub_text_widget.dart';

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
                const LibraryTileWidget(),
                const Divider(
                  thickness: 1,
                  color: kGreyItemColor,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 5, right: 15),
                  child: Row(
                    children: [
                      Text(
                        'Playlists',
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const DropDownWidget(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.add,
                          size: 25,
                          color: kBlueColor,
                        ),
                        kwidth15,
                        Text(
                          'New playlist',
                          style: GoogleFonts.roboto(
                            fontSize: 17,
                            color: kBlueColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.access_time,
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
                                'Watch Later',
                                style: GoogleFonts.roboto(
                                  fontSize: 17,
                                ),
                              ),
                              const SubTextWidget(title: '2 unwatched videos')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.thumb_up_outlined,
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
                                'Liked videos',
                                style: GoogleFonts.roboto(
                                  fontSize: 17,
                                ),
                              ),
                              const SubTextWidget(title: '30 videos')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
