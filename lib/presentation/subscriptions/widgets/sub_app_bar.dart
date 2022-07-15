import 'package:flutter/material.dart';
import 'package:ytube_clone/core/colors/colors.dart';
import 'package:ytube_clone/core/constants/const.dart';
import 'package:ytube_clone/presentation/home/widgets/appbar_list_item.dart';
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    AppBarAvatarWidget(),
                    AppBarAvatarWidget(),
                    AppBarAvatarWidget(),
                    AppBarAvatarWidget(),
                    AppBarAvatarWidget(),
                    AppBarAvatarWidget(),
                    AppBarAvatarWidget(),
                    AppBarAvatarWidget(),
                  ],
                ),
              ),
              Positioned(
                right: 0,
                child: Container(
                  height: 100,
                  width: 60,
                  color: const Color.fromARGB(255, 44, 42, 42),
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
            padding: const EdgeInsets.only(left: 10, top: 10),
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

class AppBarAvatarWidget extends StatelessWidget {
  const AppBarAvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: const [
            CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
            ),
            kHeight5,
            Padding(
              padding: EdgeInsets.only(left: 5, top: 5),
              child: Text(
                'England & Wales',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 13),
              ),
            )
          ],
        ),
      ),
    );
  }
}
