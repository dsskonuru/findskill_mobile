import 'package:flutter/material.dart';

import '../presentation/model/drawer_item.dart';
import '../presentation/model/drawer_items.dart';
import '../widget/navigation_drawer_items.dart';

class NavigationDrawer extends StatelessWidget {
  final ValueChanged<DrawerItem> onSelecteditem;
  const NavigationDrawer({
    Key? key,
    required this.onSelecteditem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: DrawerItems.all
          .map(
            (item) => GestureDetector(
                onTap: () => onSelecteditem(item),
                child: NavigationDrawerItemWidget(
                  title: item.title.toString(),
                )),
          )
          .toList(),
    );
  }
}
