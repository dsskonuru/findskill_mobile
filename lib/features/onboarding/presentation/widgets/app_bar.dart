import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FindSkillAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool enableMenu;
  final VoidCallback? onsSelectedItem;
  const FindSkillAppBar({
    Key? key,
    this.enableMenu = false,
    this.onsSelectedItem,
  })  : assert((enableMenu == false && onsSelectedItem == null) ||
            (enableMenu == true && onsSelectedItem != null)),
        super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(180);

  @override
  Widget build(BuildContext context) {
    final double _statusbarHeight = MediaQuery.of(context).padding.top;
    return Container(
      height: 13.5.h,
      padding: EdgeInsets.only(
        top: _statusbarHeight,
        right: 7.w,
        left: 7.w,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).secondaryHeaderColor,
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.5, 0.0),
            stops: const [0.0, 1.0]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 9.w,
            width: 9.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1.w),
              color: Colors.white.withOpacity(0.15),
            ),
            child: IconButton(
              color: Colors.white,
              onPressed:
                  enableMenu ? onsSelectedItem : () => context.router.pop(),
              icon: enableMenu
                  ? const Icon(Icons.menu)
                  : const Icon(Icons.arrow_back_ios_new),
              iconSize: 3.w,
            ),
          ),
          SvgPicture.asset(
            'assets/svg/findskill-appbar.svg',
            height: 7.5.h,
          ),
          Container(
            height: 9.w,
            width: 9.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1.w),
              color: Colors.white,
            ),
            child: TextButton(
              onPressed: () {
                //TODO: Add Option to change language
              },
              child: Text(
                'EN',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 3.w,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
