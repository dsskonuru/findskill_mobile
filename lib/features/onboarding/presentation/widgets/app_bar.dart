import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FindSkillAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(180);

  @override
  Widget build(BuildContext context) {
    final double _statusbarHeight = MediaQuery.of(context).padding.top;
    return Container(
      height: 140.0,
      padding: EdgeInsets.only(
        top: _statusbarHeight,
        right: 27.0,
        left: 27.0,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).secondaryHeaderColor,
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.5, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 36.0,
            width: 36.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white.withOpacity(0.15),
            ),
            child: IconButton(
              color: Colors.white,
              onPressed: () => context.router.pop(),
              icon: Icon(Icons.arrow_back_ios_new),
              iconSize: 18.0,
            ),
          ),
          SvgPicture.asset(
            'assets/svg/findskill-appbar.svg',
            height: 42.0,
          ),
          Container(
            height: 36.0,
            width: 36.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
            ),
            child: TextButton(
              child: Text(
                'EN',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 12.0,
                ),
              ),
              onPressed: () {
                //TODO: Add Option to change language
              },
            ),
          ),
        ],
      ),
    );
  }
}
