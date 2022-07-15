import 'package:flutter/material.dart';
import 'package:ytube_clone/core/colors/colors.dart';

import 'package:ytube_clone/presentation/home/widgets/video_and_details.dart';
import 'package:ytube_clone/presentation/subscriptions/widgets/sub_app_bar.dart';

class ScreenSubscriptions extends StatelessWidget {
  const ScreenSubscriptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        const SliverAppBar(
          floating: true,
          snap: true,
          backgroundColor: backgroundColor,
          toolbarHeight: 200,
          flexibleSpace: SubAppBarWidget(),
        )
      ],
      body: ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: (BuildContext ctx, int index) {
            return const VideoAndDetailsWidget();
          }),
    ));
  }
}
