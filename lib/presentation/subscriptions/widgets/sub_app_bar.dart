import 'package:flutter/material.dart';
import 'package:ytube_clone/core/colors/colors.dart';
import 'package:ytube_clone/core/constants/const.dart';
import 'package:ytube_clone/presentation/home/widgets/appbar_list_item.dart';
import 'package:ytube_clone/presentation/subscriptions/widgets/app_bar_avatar_widget.dart';
import 'package:ytube_clone/presentation/widgets/app_bar_widget.dart';

class SubAppBarWidget extends StatelessWidget {
  const SubAppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      color: kTransparentColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppBarWidget(),
          kHeight5,
          Stack(
            children: [
              SizedBox(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return AppBarAvatarWidget();
                    }),
              ),
              Positioned(
                right: 0,
                child: Container(
                  height: 100,
                  width: 60,
                  color: backgroundColor,
                  child: const Center(
                    child: Text(
                      'ALL',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  AppBarItemWidget(size: 38, title: 'All'),
                  kwidth5,
                  AppBarItemWidget(title: 'Street Food', size: 90),
                  kwidth5,
                  AppBarItemWidget(title: 'Comedy', size: 70),
                  kwidth5,
                  AppBarItemWidget(title: 'Music', size: 70),
                  kwidth5,
                  AppBarItemWidget(title: 'Travel', size: 70),
                  kwidth5,
                  AppBarItemWidget(title: 'Tourism', size: 70),
                  kwidth5,
                  AppBarItemWidget(title: 'Cooking', size: 70),
                  kwidth5,
                  AppBarItemWidget(title: 'Computers', size: 90),
                  kwidth5,
                  Text(
                    'SETTINGS',
                    style: TextStyle(color: Colors.blue, fontSize: 13),
                  ),
                  kwidth15,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
