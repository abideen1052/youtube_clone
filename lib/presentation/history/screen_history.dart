import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ytube_clone/core/colors/colors.dart';
import 'package:ytube_clone/core/constants/const.dart';

import 'package:ytube_clone/presentation/widgets/app_bar_sub_widget.dart';
import 'package:ytube_clone/presentation/widgets/main_text_widget.dart';

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
        body: Column(
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
                prefixInsets: const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 4),
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
                        }),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class HistoryShortsCard extends StatelessWidget {
  const HistoryShortsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        SizedBox(
          height: 135,
          width: 93,
          child: Image(
            image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkeHl9ho3_Cj26lQ1CjHkLBQluQ_SQ0pAcUw&usqp=CAU',
            ),
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          child: SizedBox(
            width: 93,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Test Cricket India',
                style: TextStyle(color: kWhiteColor),
              ),
            ),
          ),
        ),
        Positioned(
          right: 5,
          top: 5,
          child: FaIcon(
            FontAwesomeIcons.ellipsisVertical,
            color: kWhiteColor,
            size: 14,
          ),
        ),
      ],
    );
  }
}
