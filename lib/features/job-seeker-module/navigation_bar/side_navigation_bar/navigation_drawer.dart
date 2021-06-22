import 'package:find_skill/features/job-seeker-module/dashboard/presentation/pages/dashboard_page.dart';
import 'package:find_skill/features/job-seeker-module/navigation_bar/presentation/model/drawer_items.dart';
import 'package:find_skill/features/job-seeker-module/navigation_bar/side_navigation_bar/drawer.dart';
import 'package:find_skill/features/job-seeker-module/navigation_bar/widget/navigation_drawer_items.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SideBarNavigationDrawer extends StatefulWidget {
  const SideBarNavigationDrawer({Key? key}) : super(key: key);

  @override
  _SideBarNavigationDrawerState createState() =>
      _SideBarNavigationDrawerState();
}

class _SideBarNavigationDrawerState extends State<SideBarNavigationDrawer> {
  late double xOffset;
  late double yOffset;
  late double scaleFactor;
  late bool isDrawerOpen;
  bool isDragging = false;

  void initState() {
    super.initState();
    closeDrawer();
  }

  void closeDrawer() {
    setState(() {
      xOffset = 0;
      yOffset = 0;
      scaleFactor = 1;
      isDrawerOpen = false;
    });
  }

  void openDrawer() {
    setState(() {
      xOffset = 71.w;//290;
      yOffset = 10.h;//70;
      scaleFactor = 0.8;
      isDrawerOpen = true;
    });
  }

  Widget dashBoardPage() {
    return WillPopScope(
      onWillPop: () async {
        if (isDrawerOpen) {
          closeDrawer();
          return false;
        } else {
          return true;
        }
      },
      child: GestureDetector(
        onTap: closeDrawer,
        onHorizontalDragStart: (details) => isDragging = true,
        onHorizontalDragUpdate: (details) {
          if (!isDragging) {
            return;
          }
          const delta = 1;
          if (details.delta.dx > delta) {
            openDrawer();
          } else if (details.delta.dx < -delta) {
            closeDrawer();
          }
          isDragging = false;
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          transform: Matrix4.translationValues(xOffset, yOffset, 0)..scale(scaleFactor),
          child: AbsorbPointer(
            absorbing: isDrawerOpen,
            child: DashBoardPage(openDrawer: openDrawer),
          ),
        ),
      ),
    );
  }

  // Widget drawerItems() {
  //   return ;
  // }

  Widget navigationDrawer() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
           const NavigationDrawer(),
           SizedBox(
             height: 10.h,
           ),
            NavigationDrawerItemWidget(title: DrawerItems.singOut.title)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
          child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            width: xOffset,
            height: 63.h,//490,
            child: navigationDrawer(),
          ),
          dashBoardPage(),
        ],
      )),
    );
  }
}
