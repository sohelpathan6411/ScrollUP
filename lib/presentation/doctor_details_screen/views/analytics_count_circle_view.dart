import 'package:flutter/material.dart';
import 'package:getx_docto_appointment/core/utils/size_utils.dart';

import '../../../theme/theme_helper.dart';

class AnalyticsCountCircleView extends StatelessWidget {
  final IconData? icon;
  final countText;
  final labelText;

  const AnalyticsCountCircleView(
      {Key? key, this.icon, this.countText, this.labelText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            padding: EdgeInsets.all(17.v),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: appTheme.blueShade800.withOpacity(0.1),
            ),
            child: Icon(
              icon,
              size: 30.v,
              color: appTheme.blueShade800,
            )),
        SizedBox(height: 12.v),
        Text(countText ?? " - ",
            style: theme.textTheme.headline2!
                .copyWith(color: appTheme.blueShade800)),
        SizedBox(height: 4.v),
        Text(labelText ?? " - ", style: theme.textTheme.headline6),
      ],
    );
  }
}
