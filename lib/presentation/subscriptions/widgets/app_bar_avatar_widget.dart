import 'package:flutter/material.dart';
import 'package:ytube_clone/core/constants/const.dart';

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
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          children: const [
            CircleAvatar(
              radius: 30,
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
