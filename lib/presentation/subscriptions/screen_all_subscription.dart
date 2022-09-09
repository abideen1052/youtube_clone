import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ytube_clone/core/colors/colors.dart';
import 'package:ytube_clone/presentation/subscriptions/widgets/drop_down.dart';
import 'package:ytube_clone/presentation/widgets/app_bar_sub_widget.dart';
import 'package:ytube_clone/presentation/widgets/main_text_widget.dart';

class ScreenAllSubscription extends StatelessWidget {
  const ScreenAllSubscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, top: 5, right: 8),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: backgroundColor,
          elevation: 0,
          titleSpacing: 1,
          title: const AppBarSubWidget(
            title: 'Channel list',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: const [
                    SubscriptionDropDown(),
                    Spacer(),
                    Text(
                      'MANAGE',
                      style: TextStyle(color: kBlueColor),
                    )
                  ],
                ),
                Column(
                  children: [
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 20,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return const Padding(
                              padding: EdgeInsets.only(left: 5, top: 5),
                              child: ListTile(
                                leading: CircleAvatar(
                                  //radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
                                ),
                                title: Text(
                                  'Channel name',
                                  style: TextStyle(color: kWhiteColor),
                                ),
                                trailing: CircleAvatar(
                                  radius: 3,
                                ),
                              ));
                        }),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
