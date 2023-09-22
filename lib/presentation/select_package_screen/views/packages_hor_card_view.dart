import 'package:flutter/material.dart';
import 'package:getx_docto_appointment/core/utils/size_utils.dart';

import '../../../theme/theme_helper.dart';

class PackagesHorCardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.v),
      margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.v),
      decoration: BoxDecoration(
          border: Border.all(
              width: 0.5, color: appTheme.blueGray400.withOpacity(0.5)),
          borderRadius: BorderRadius.all(Radius.circular(16.v))),
      child: Row(
        children: [
          Container(
              padding: EdgeInsets.all(17.v),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: appTheme.blueShade800.withOpacity(0.1),
              ),
              child: Icon(
                Icons.message,
                size: 30.v,
                color: appTheme.blueShade800,
              )),
          SizedBox(width: 15.v),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(4.0.v),
                child: Text("Messaging", style: theme.textTheme.headline3),
              ),
              Padding(
                padding: EdgeInsets.all(4.0.v),
                child: SizedBox(
                  width: (mediaQueryData.size.width / 2.4),
                  child: Text("Chat with doctor",
                      style: theme.textTheme.headline6),
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(3.v),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: appTheme.whiteA700,
                border: Border.all(color: appTheme.blueShade800, width: 1)),
            child: Icon(
              Icons.circle,
              size: 20.v,
              color: appTheme.blueShade800,
            ),
          ),
          SizedBox(width: 5.v),
        ],
      ),
    );
  }
}
