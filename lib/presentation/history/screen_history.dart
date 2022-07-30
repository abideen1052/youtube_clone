import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ytube_clone/core/colors/colors.dart';
import 'package:ytube_clone/core/constants/const.dart';
import 'package:ytube_clone/presentation/history/widgets/history_shorts_card.dart';
import 'package:ytube_clone/presentation/history/widgets/history_video_card.dart';
import 'package:ytube_clone/presentation/widgets/app_bar_sub_widget.dart';

class ScreenHistory extends StatelessWidget {
  const ScreenHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: backgroundColor,
        elevation: 0,
        titleSpacing: 1,
        title: const AppBarSubWidget(),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: kSearchBarColor,
                height: 50,
                child: CupertinoSearchTextField(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  placeholder: 'Search watch history',
                  itemColor: kGreyColor,
                  itemSize: 25,
                  prefixInsets:
                      const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 4),
                  padding: const EdgeInsets.only(left: 15),
                  style: const TextStyle(color: kWhiteColor),
                ),
              ),
              kHeight20,
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Today',
                      style: TextStyle(fontSize: 16),
                    ),
                    kHeight20,
                    Row(
                      children: const [
                        SizedBox(
                          height: 23,
                          width: 18,
                          child: Image(
                            image: AssetImage(
                              'images/shortslogo.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        kwidth10,
                        Text(
                          'Shorts',
                          style: TextStyle(fontSize: 15, color: kWhiteColor),
                        )
                      ],
                    ),
                    kHeight20,
                    SizedBox(
                      height: 135,
                      child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.only(right: 13),
                            child: HistoryShortsCard(),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              kHeight10,
              HistoryVideoCard(),
              HistoryVideoCard(),
              HistoryVideoCard(),
              HistoryVideoCard(),
              HistoryVideoCard(),
              HistoryVideoCard(),
              HistoryVideoCard(),
              HistoryVideoCard(),
            ],
          ),
        ],
      ),
    );
  }
}
