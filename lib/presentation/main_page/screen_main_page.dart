import 'package:flutter/material.dart';
import 'package:ytube_clone/presentation/home/sceen_home.dart';
import 'package:ytube_clone/presentation/library/screen_library.dart';
import 'package:ytube_clone/presentation/main_page/widgets/bottom_navigation.dart';
import 'package:ytube_clone/presentation/profile/screen_profile.dart';
import 'package:ytube_clone/presentation/shorts/screen_shorts.dart';
import 'package:ytube_clone/presentation/subscriptions/screen_subscription.dart';
import 'package:ytube_clone/presentation/widgets/create.dart';

class ScreenMainPage extends StatelessWidget {
  const ScreenMainPage({Key? key}) : super(key: key);
  final _pages = const [
    ScreenHome(),
    ScreenShorts(),
    ScreenCreate(),
    ScreenSubscriptions(),
    ScreenLibrary(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
        bottomNavigationBar: const BottomNavigationWidget(),
      ),
    );
  }
}
