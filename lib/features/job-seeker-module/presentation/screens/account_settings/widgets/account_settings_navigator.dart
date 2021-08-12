import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../../core/localization/app_localization.dart';

class AccountSettingsNavigator extends StatelessWidget {
  const AccountSettingsNavigator({
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
                _controller.setSelectedMenuPosition(2);
              },
              child: Text(
                AppLocalizations.of(context)!.translate("ACCOUNT SETTINGS"),
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
