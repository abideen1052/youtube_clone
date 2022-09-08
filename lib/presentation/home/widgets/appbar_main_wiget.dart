import 'package:flutter/material.dart';
import 'package:ytube_clone/core/colors/colors.dart';
import 'package:ytube_clone/core/constants/const.dart';
import 'package:ytube_clone/presentation/home/widgets/appbar_list_item.dart';
import 'package:ytube_clone/presentation/widgets/app_bar_widget.dart';

class AppBarMainWidget extends StatelessWidget {
  const AppBarMainWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  kWidth15,
                  const AppBarItemWidget(size: 38, title: 'All'),
                  kWidth5,
                  const AppBarItemWidget(title: 'Street Food', size: 90),
                  kWidth5,
                  const AppBarItemWidget(title: 'Comedy', size: 70),
                  kWidth5,
                  const AppBarItemWidget(title: 'Music', size: 70),
                  kWidth5,
                  const AppBarItemWidget(title: 'Travel', size: 70),
                  kWidth5,
                  const AppBarItemWidget(title: 'Tourism', size: 70),
                  kWidth5,
                  const AppBarItemWidget(title: 'Cooking', size: 70),
                  kWidth5,
                  const AppBarItemWidget(title: 'Computers', size: 90),
                  kWidth5,
                  const Text(
                    'SEND FEEDBACK',
                    style: TextStyle(color: Colors.blue, fontSize: 13),
                  ),
                  kWidth15,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
