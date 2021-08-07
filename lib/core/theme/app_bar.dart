import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../features/onboarding/data/models/language.dart';
import '../../features/onboarding/presentation/provider/language_provider.dart';
import '../providers/user_actions_provider.dart';
import 'theme_data.dart';

class FindSkillAppBar extends ConsumerWidget implements PreferredSizeWidget {
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
  Widget build(BuildContext context, ScopedReader watch) {
    final double _statusbarHeight = MediaQuery.of(context).padding.top;
    return Container(
      height: 14.h,
      padding: EdgeInsets.only(
        top: _statusbarHeight,
        right: 7.w,
        left: 7.w,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [vandylBlue, scubaBlue],
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
          Image.asset(
            "assets/png/findskill-logo-side-text-white.png",
            fit: BoxFit.scaleDown,
            height: 7.h,
          ),
          Container(
            height: 9.w,
            width: 9.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1.w),
              color: Colors.white,
            ),
            child: PopupMenuButton<String>(
              icon: Text(
                watch(languageProvider).language.code.toUpperCase(),
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 2.5.w,
                ),
              ),
              itemBuilder: (BuildContext context) {
                final LanguagesList _languages =
                    watch(languageProvider).languages;
                return _languages.list
                    .map((_language) => PopupMenuItem<String>(
                          value: _language.name,
                          child: Text(
                            _language.name,
                            style: Theme.of(context).textTheme.overline,
                          ),
                        ))
                    .toList();
              },
              onSelected: (_languageName) => watch(userActionsProvider)
                  .changeLanguage(_languageName, context),
            ),
          ),
        ],
      ),
    );
  }
}
