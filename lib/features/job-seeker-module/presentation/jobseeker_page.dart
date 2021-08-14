import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/localization/app_localization.dart';
import '../../../core/theme/app_bar.dart';
import '../../../core/theme/theme_data.dart';
import 'screens/account_settings/pages/account_settings_page.dart';
import 'screens/account_settings/widgets/account_settings_navigator.dart';
import 'screens/dashboard/pages/dashboard_page.dart';
import 'screens/dashboard/widgets/dashboard_navigator.dart';
import 'screens/edit_profile/pages/edit_profile_page.dart';
import 'screens/edit_profile/widgets/edit_profile_navigator.dart';
import 'screens/notifications/widgets/notfications_navigator.dart';
import 'screens/refer-and-earn/pages/refer_and_earn_page.dart';
import 'screens/refer-and-earn/widgets/refer_and_earn_navigator.dart';
import 'view-jobs/pages/view_jobs_page.dart';

class JobseekerPage extends StatelessWidget {
  // const JobseekerPage({@PathParam('screen') this.screen = 0});

  // final int screen;

  @override
  Widget build(BuildContext context) {
    return SimpleHiddenDrawer(
      menu: Menu(),
      screenSelectedBuilder: (position, controller) {
        Widget? screenCurrent;
        switch (position) {
          case 0:
            screenCurrent = DashboardPage();
            break;
          case 1:
            screenCurrent = const EditProfilePage();
            break;
          case 2:
            screenCurrent = const AccountSettingsPage();
            break;
          case 3:
            screenCurrent = NotificationsPage();
            break;
          case 4:
            screenCurrent = const ReferAndEarnPage();
            break;
        }
        return Scaffold(
          appBar: FindSkillAppBar(
            enableMenu: true,
            onNavigationSelection: () => controller.toggle(),
          ),
          body: screenCurrent,
          // TODO: Make bottom navigation work
          bottomNavigationBar: BottomNavigationBar(
            onTap: (value) => controller.setSelectedMenuPosition(value), // new
            currentIndex: position, // new
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  label: 'HOME',
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
                label: 'NOTIFICATIONS',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.share,
                  color: Colors.black,
                ),
                label: 'REFER & EARN',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.work,
                  color: Colors.black,
                ),
                label: 'VIEW JOBS',
              ),
            ],
          ),
        );
      },
    );
  }
}

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late SimpleHiddenDrawerController _controller;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _controller = SimpleHiddenDrawerController.of(context);
    _controller.addListener(() {
      if (_controller.state == MenuState.open) {
        _animationController.forward();
      }

      if (_controller.state == MenuState.closing) {
        _animationController.reverse();
      }
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: Colors.cyan,
      child: Stack(
        children: <Widget>[
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [vandylBlue, scubaBlue],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(0.5, 0.0),
                  stops: const [0.0, 1.0]),
            ),
          ),
          FadeTransition(
            opacity: _animationController,
            child: Padding(
              padding: EdgeInsets.only(left: 5.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    DashboardNavigator(controller: _controller),
                    EditProfileNavigator(controller: _controller),
                    AccountSettingsNavigator(controller: _controller),
                    NotificationsNavigator(controller: _controller),
                    ReferAndEarnNavigator(controller: _controller),
                    SizedBox(height: 10.h),
                    SignOutNavigator(controller: _controller),
                    SizedBox(height: 12.h),
                    SwitchProfileNavigator(controller: _controller),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SignOutNavigator extends StatelessWidget {
  //TODO: Implement Sign Out
  // await container.read(authProvider).signOut();
  const SignOutNavigator({
    Key? key,
    required SimpleHiddenDrawerController controller,
  })  : _controller = controller,
        super(key: key);

  final SimpleHiddenDrawerController _controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.w,
      child: Material(
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                _controller.setSelectedMenuPosition(4);
              },
              child: Text(
                AppLocalizations.of(context)!.translate("SIGN OUT"),
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.button,
              ),
            ),
            const Divider(
              color: Colors.white,
              thickness: 1.0,
            )
          ],
        ),
      ),
    );
  }
}

class SwitchProfileNavigator extends StatelessWidget {
  const SwitchProfileNavigator({
    Key? key,
    required SimpleHiddenDrawerController controller,
  })  : _controller = controller,
        super(key: key);

  final SimpleHiddenDrawerController _controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.w,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            _controller.setSelectedMenuPosition(4);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.person,
                color: Colors.white,
                size: 12.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.translate("SWITCH TO"),
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.button,
                  ),
                  Text(
                    AppLocalizations.of(context)!.translate("EMPLOYER PROFILE"),
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.button,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
