import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ytube_clone/core/colors/colors.dart';
import 'package:ytube_clone/core/constants/const.dart';
import 'package:ytube_clone/presentation/home/widgets/appbar_list_item.dart';
import 'package:ytube_clone/presentation/home/widgets/appbar_main_wiget.dart';
import 'package:ytube_clone/presentation/home/widgets/video_and_details.dart';

import 'package:ytube_clone/presentation/widgets/app_bar_widget.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(false);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            floating: true,
            snap: true,
            backgroundColor: backgroundColor,
            toolbarHeight: 90,
            flexibleSpace: const AppBarMainWidget(),
          )
        ],
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext ctx, int index) {
              return const VideoAndDetailsWidget();
            }),
      ),
    );
  }
}
