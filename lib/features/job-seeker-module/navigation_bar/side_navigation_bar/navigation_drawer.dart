import 'package:find_skill/features/job-seeker-module/dashboard/presentation/pages/dashboard_page.dart';
import 'package:find_skill/features/job-seeker-module/navigation_bar/side_navigation_bar/drawer.dart';
import 'package:flutter/material.dart';

class SideBarNavigationDrawer extends StatefulWidget {
  const SideBarNavigationDrawer({Key? key}) : super(key: key);

  @override
  _SideBarNavigationDrawerState createState() =>
      _SideBarNavigationDrawerState();
}

class _SideBarNavigationDrawerState extends State<SideBarNavigationDrawer> {
  late double x;
  late double y;
  late double scaleFactor;
  late bool isDrawerOpen;
  bool isDragging = false;

  void initState() {
    super.initState();
    closeDrawer();
  }

  void closeDrawer() {
    setState(() {
      x = 0;
      y = 0;
      scaleFactor = 1;
      isDrawerOpen = false;
    });
  }

  void openDrawer() {
    setState(() {
      x = 230;
      y = 150;
      scaleFactor = 0.6;
      isDrawerOpen = true;
    });
  }

  Widget dashBoardPage() {
    return WillPopScope(
      
      onWillPop: () async { 
        if (isDrawerOpen) {
          closeDrawer();
          return false;
        }else {
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
          duration: const Duration(milliseconds: 250),
          transform: Matrix4.translationValues(x, y, 0)..scale(scaleFactor),
          child: AbsorbPointer(
            absorbing: isDrawerOpen,
            child: DashBoardPage(openDrawer: openDrawer),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
          child: Stack(
        children: [
          const NavigationDrawer(),
          dashBoardPage(),
        ],
      )),
    );
  }
}
