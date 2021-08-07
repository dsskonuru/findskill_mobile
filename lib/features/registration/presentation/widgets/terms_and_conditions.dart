import 'package:auto_route/auto_route.dart';
import 'package:findskill/core/localization/app_localization.dart';
import 'package:findskill/core/theme/raised_gradient_button.dart';
import 'package:flutter/material.dart';

class PopupDialog extends StatelessWidget {
  const PopupDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        AppLocalizations.of(context)!.translate("Terms and Conditions"),
        style: Theme.of(context).textTheme.subtitle2,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            AppLocalizations.of(context)!.translate("""
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ultricies dapibus 
ex, eget mattis nisl euismod tempor. Sed molestie eros in tortor scelerisque, at
gravida nunc congue. In consectetur tortor in quam luctus dictum. Pellentesque 
consequat, felis vel finibus imperdiet, nisl nisl posuere turpis, sit amet 
imperdiet purus ex nec leo. Nam eleifend massa odio, non suscipit mauris aliquet
at. Suspendisse nec orci in tortor facilisis ultrices. Phasellus bibendum elit 
enim, id scelerisque lacus laoreet et. Aliquam sapien arcu, finibus vitae lacus 
tempor, blandit luctus dui. Nunc malesuada nisl ac sodales vestibulum. Etiam in 
ligula leo. Ut et ipsum a sapien tempor sodales.
              """),
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
      actions: <Widget>[
        Center(
          child: RaisedGradientButton(
            onPressed: () {
              context.router.pop();
            },
            child: Text(
              AppLocalizations.of(context)!.translate('Close'),
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
      ],
    );
  }
}
