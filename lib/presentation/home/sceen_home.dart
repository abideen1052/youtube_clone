import 'package:flutter/material.dart';
import 'package:ytube_clone/core/colors/colors.dart';
import 'package:ytube_clone/core/constants/const.dart';
import 'package:ytube_clone/presentation/home/widgets/appbar_list_item.dart';
import 'package:ytube_clone/presentation/home/widgets/video_and_details.dart';

import 'package:ytube_clone/presentation/widgets/app_bar_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 90,
            color: kTransparentColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppBarWidget(),
                kHeight5,
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.explore),
                          label: const Text('Explore'),
                          style: ElevatedButton.styleFrom(
                            primary: kGreyItemColor,
                          ),
                        ),
                        kwidth15,
                        const AppBarItemWidget(size: 38, title: 'All'),
                        kwidth5,
                        const AppBarItemWidget(title: 'Street Food', size: 90),
                        kwidth5,
                        const AppBarItemWidget(title: 'Comedy', size: 70),
                        kwidth5,
                        const AppBarItemWidget(title: 'Music', size: 70),
                        kwidth5,
                        const AppBarItemWidget(title: 'Travel', size: 70),
                        kwidth5,
                        const AppBarItemWidget(title: 'Tourism', size: 70),
                        kwidth5,
                        const AppBarItemWidget(title: 'Cooking', size: 70),
                        kwidth5,
                        const AppBarItemWidget(title: 'Computers', size: 90),
                        kwidth5,
                        const Text(
                          'SEND FEEDBACK',
                          style: TextStyle(color: Colors.blue, fontSize: 13),
                        ),
                        kwidth15,
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child:
              ListView.builder(itemBuilder: (BuildContext ctx, int index) {
            return const VideoAndDetailsWidget();
          }))
        ],
      ),
    );
  }
}
