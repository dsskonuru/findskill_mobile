import 'package:find_skill/features/job-seeker-module/navigation_bar/presentation/model/drawer_items.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: DrawerItems.all
            .map((item) => ListTile(
                  tileColor: Colors.red,
                  title   : Text(
                    item.title.toString(),
                    style: const TextStyle(color: Colors.black),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
