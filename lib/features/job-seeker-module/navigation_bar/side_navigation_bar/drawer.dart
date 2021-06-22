import 'package:find_skill/features/job-seeker-module/navigation_bar/presentation/model/drawer_items.dart';
import 'package:find_skill/features/job-seeker-module/navigation_bar/widget/navigation_drawer_items.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: DrawerItems.all
          .map(
            (item) =>  NavigationDrawerItemWidget(title: item.title.toString(),),
          )
          .toList(),
    );
  }
}
