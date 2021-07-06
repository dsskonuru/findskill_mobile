import 'package:find_skill/features/job-seeker-module/account_settings/presentation/pages/account_settings_page.dart';
import 'package:find_skill/features/job-seeker-module/dashboard/presentation/pages/dashboard_page.dart';
import 'package:find_skill/features/job-seeker-module/navigation_bar/presentation/model/drawer_item.dart';
import 'package:find_skill/features/job-seeker-module/navigation_bar/presentation/model/drawer_items.dart';
import 'package:find_skill/features/job-seeker-module/navigation_bar/side_navigation_bar/drawer.dart';
import 'package:find_skill/features/job-seeker-module/navigation_bar/widget/navigation_drawer_items.dart';
import 'package:find_skill/features/job-seeker-module/profile/presentation/pages/profile_page.dart';
import 'package:find_skill/features/job-seeker-module/refer-and-earn/presentation/pages/refer_and_earn_page.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SideBarNavigationDrawer extends StatefulWidget {
  const SideBarNavigationDrawer({Key? key}) : super(key: key);

  @override
  _SideBarNavigationDrawerState createState() =>
      _SideBarNavigationDrawerState();
}

class _SideBarNavigationDrawerState extends State<SideBarNavigationDrawer> {
  late double _xOffset;
  late double _yOffset;
  late double _scaleFactor;
  late bool _isDrawerOpen;
  bool _isDragging = false;
  DrawerItem _drawerItem = DrawerItems.dashboard;

  @override
  void initState() {
    super.initState();
    closeDrawer();
  }

  void closeDrawer() {
    setState(() {
      _xOffset = 0;
      _yOffset = 0;
      _scaleFactor = 1;
      _isDrawerOpen = false;
    });
  }

  void openDrawer() {
    setState(() {
      _xOffset = 71.w; //290;
      _yOffset = 10.h; //70;
      _scaleFactor = 0.8;
      _isDrawerOpen = true;
    });
  }

  Widget dashBoardPage() {
    return WillPopScope(
      onWillPop: () async {
        if (_isDrawerOpen) {
          closeDrawer();
          return false;
        } else {
          return true;
        }
      },
      child: GestureDetector(
        onTap: closeDrawer,
        onHorizontalDragStart: (details) => _isDragging = true,
        onHorizontalDragUpdate: (details) {
          if (!_isDragging) {
            return;
          }
          const delta = 1;
          if (details.delta.dx > delta) {
            openDrawer();
          } else if (details.delta.dx < -delta) {
            closeDrawer();
          }
          _isDragging = false;
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          transform: Matrix4.translationValues(_xOffset, _yOffset, 0)
            ..scale(_scaleFactor),
          child: AbsorbPointer(
            absorbing: _isDrawerOpen,
            child: getDrawerPage(),
          ),
        ),
      ),
    );
  }

  Widget navigationDrawer() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          NavigationDrawer(
            onSelecteditem: (DrawerItem value) {
              setState(() {
                _drawerItem = value;
              });
              closeDrawer();
            },
          ),
          SizedBox(
            height: 10.h,
          ),
          NavigationDrawerItemWidget(
            title: DrawerItems.singOut.title!,
          )
        ],
      ),
    );
  }

  Widget getDrawerPage() {
    switch (_drawerItem) {
      case DrawerItems.editProfile:
        return ProfilePage(
          openDrawer: openDrawer,
        );
      case DrawerItems.accountSettings:
        return AccountSettingsPage(
          openDrawer: openDrawer,
        );
      // add notffication screen
      // case DrawerItems.accountSettings:
      //   return Accounts();
      case DrawerItems.referAndEarn:
        return ReferAndEarn(
          openDrawer: openDrawer,
        );
      default:
        return DashBoardPage(
          openDrawer: openDrawer,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
          child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          SizedBox(
            width: _xOffset,
            height: 63.h, //490,
            child: navigationDrawer(),
          ),
          dashBoardPage(),
        ],
      )),
    );
  }
}
