
import 'drawer_item.dart';

mixin DrawerItems {
  static const DrawerItem dashboard = DrawerItem();
  static const DrawerItem editProfile = DrawerItem(title: "EDIT PROFILE");
  static const DrawerItem accountSettings = DrawerItem(title: "ACCOUNT SETTINGS");
  static const DrawerItem notifications = DrawerItem(title: "NOTIFICATIONS");
  static const DrawerItem referAndEarn = DrawerItem(title: "REFER AND EARN");
  static const DrawerItem singOut = DrawerItem(title: "SIGN OUT");

  static final List<DrawerItem> all = [
    editProfile,
    accountSettings,
    notifications,
    referAndEarn,
  ];

}