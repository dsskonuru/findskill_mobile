import 'package:drawerbehavior/drawerbehavior.dart';
import 'package:flutter/material.dart';

List<MenuItem> items = [
  MenuItem<int>(
    id: 0,
    title: 'THE PADDOCK',
    prefix: const Icon(Icons.fastfood),
  ),
  MenuItem<int>(
    id: 1,
    title: 'THE HERO',
    prefix: const Icon(Icons.person),
  ),
  MenuItem<int>(
    id: 2,
    title: 'HELP US GROW',
    prefix: const Icon(Icons.terrain),
  ),
  MenuItem<int>(
    id: 3,
    title: 'SETTINGS',
    prefix: const Icon(Icons.settings),
  ),
];
final menu = Menu(
  items: items.map((e) => e.copyWith(prefix: null)).toList(),
);

final menuWithIcon = Menu(
  items: items,
);

class DrawerScaleIcon extends StatefulWidget {
  @override
  _DrawerScaleIconState createState() => _DrawerScaleIconState();
}

class _DrawerScaleIconState extends State<DrawerScaleIcon> {
  late int selectedMenuItemId;

  @override
  void initState() {
    selectedMenuItemId = menuWithIcon.items[0].id as int;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DrawerScaffold(
      appBar: AppBar(
          title: const Text("Drawer - Scale with Icon"),
          actions: [IconButton(icon: const Icon(Icons.add), onPressed: () {})]),
      drawers: [
        SideDrawer(
          percentage: 0.6,
          menu: menuWithIcon,
          animation: true,
          color: Theme.of(context).primaryColor,
          selectedItemId: selectedMenuItemId,
          onMenuItemSelected: (itemId) {
            setState(() {
              selectedMenuItemId = itemId as int;
            });
          },
        )
      ],
      builder: (context, id) => IndexedStack(
        index: id as int,
        children: menu.items
            .map((e) => Center(
                  child: Text("Page~${e.title}"),
                ))
            .toList(),
      ),
    );
  }
}
