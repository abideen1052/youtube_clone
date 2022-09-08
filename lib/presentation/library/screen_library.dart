import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ytube_clone/core/colors/colors.dart';
import 'package:ytube_clone/core/constants/const.dart';
import 'package:ytube_clone/presentation/history/screen_history.dart';
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
        body: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Row(
                  children: [
                    const Icon(
                      Icons.history,
                      size: 30,
                      color: kWhiteColor,
                    ),
                    kWidth10,
                    Text(
                      'History',
                      style: GoogleFonts.roboto(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(80, 0),
                          primary: kGreyColor5,
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const ScreenHistory();
                          }));
                        },
                        child: const Text(
                          'VIEW ALL',
                          style: TextStyle(color: kBlueColor, fontSize: 15),
                        ))
                  ],
                ),
              ),
              SizedBox(
                  height: 153,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: HistoryWidget(),
                        );
                      })),
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
                      Icons.add,
                      size: 25,
                      color: kBlueColor,
                    ),
                  ),
                  title: Text(
                    'New playlist',
                    style: GoogleFonts.roboto(
                      fontSize: 17,
                      color: kBlueColor,
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
                      Icons.access_time,
                      size: 25,
                      color: kWhiteColor,
                    ),
                  ),
                  title: Text(
                    'Watch Later',
                    style: GoogleFonts.roboto(
                      fontSize: 17,
                      color: kWhiteColor,
                    ),
                  ),
                  subtitle: const SubTextWidget(title: '2 unwatched videos'),
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
                      Icons.thumb_up_outlined,
                      size: 25,
                      color: kWhiteColor,
                    ),
                  ),
                  title: Text(
                    'Liked videos',
                    style: GoogleFonts.roboto(
                      fontSize: 17,
                      color: kWhiteColor,
                    ),
                  ),
                  subtitle: const SubTextWidget(title: '30 videos'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
