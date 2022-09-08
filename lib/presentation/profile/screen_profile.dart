import 'package:flat_icons_flutter/flat_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ytube_clone/core/colors/colors.dart';
import 'package:ytube_clone/core/constants/const.dart';
import 'package:ytube_clone/presentation/profile/widgets/tile_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: backgroundColor,
          context: context,
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Scaffold(
                appBar: AppBar(
                  elevation: 0,
                  backgroundColor: backgroundColor,
                  leading: const Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.close,
                      size: 30,
                    ),
                  ),
                ),
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://www.babycenter.com/ims/2019/10/Zia-16-Edit_4x3.jpg'),
                                  radius: 20,
                                ),
                                kWidth15,
                                Text(
                                  'Name of Account',
                                  style: TextStyle(fontSize: 15),
                                ),
                                kWidth140,
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: kWhiteColor,
                                  size: 16,
                                )
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 5, left: 55),
                              child: Text(
                                'Manage your Google Account',
                                style: TextStyle(color: kBlueColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                      kHeight20,
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: const [
                            TileWidget(
                              icon: FlatIcons.user_3,
                              title: 'Yor channel',
                            ),
                            TileWidget(
                              icon: FlatIcons.hide,
                              title: 'Turn on Incognito',
                            ),
                            TileWidget(
                              icon: FlatIcons.users,
                              title: 'Add account',
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: kGreyItemColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          children: const [
                            TileWidget(
                              icon: FlatIcons.play_button,
                              title: 'Get YouTube Premium',
                            ),
                            TileWidget(
                              icon: FlatIcons.price_tag,
                              title: 'Purchase and memberships',
                            ),
                            TileWidget(
                              icon: FlatIcons.time,
                              title: 'Time watched',
                            ),
                            TileWidget(
                              icon: FlatIcons.user,
                              title: 'Your data in YouTube',
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: kGreyItemColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          children: const [
                            TileWidget(
                              icon: FlatIcons.settings_4,
                              title: 'Settings',
                            ),
                            TileWidget(
                              icon: FlatIcons.con_roundabout_1_a,
                              title: 'Help and feedback',
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: kGreyItemColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          children: const [
                            TileWidget(
                              icon: FlatIcons.settings_4,
                              title: 'YouTube Studio',
                            ),
                            TileWidget(
                              icon: FlatIcons.con_roundabout_1_a,
                              title: 'YouTube Music',
                            ),
                            TileWidget(
                              icon: FlatIcons.con_roundabout_1_a,
                              title: 'YouTube Kids',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
      child: const CircleAvatar(
        backgroundImage: NetworkImage(
            'https://www.babycenter.com/ims/2019/10/Zia-16-Edit_4x3.jpg'),
        radius: 14,
      ),
    );
  }
}
