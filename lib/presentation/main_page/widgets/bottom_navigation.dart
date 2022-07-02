import 'package:flutter/material.dart';
import 'package:ytube_clone/core/colors/colors.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int newIndex, _) {
        return Container(
          decoration: const BoxDecoration(
            color: kTransparentColor,
            border: Border(
              top: BorderSide(
                color: kGreyItemColor,
                width: 1,
              ),
            ),
          ),
          child: BottomNavigationBar(
            currentIndex: newIndex,
            onTap: (index) {
              indexChangeNotifier.value = index;
            },
            selectedFontSize: 13,
            type: BottomNavigationBarType.fixed,
            backgroundColor: backgroundColor,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedIconTheme: const IconThemeData(color: Colors.white),
            unselectedIconTheme: const IconThemeData(color: Colors.grey),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.play_circle_outline,
                  ),
                  label: 'Shorts'),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_circle_outline,
                  size: 35,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.subscriptions_outlined,
                  ),
                  label: 'Subscriptions'),
              BottomNavigationBarItem(
                icon: Icon(Icons.collections_outlined),
                label: 'Libarary',
              ),
            ],
          ),
        );
      },
    );
  }
}
