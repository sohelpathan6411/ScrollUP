import 'package:flutter/material.dart';
import 'package:getx_docto_appointment/core/utils/size_utils.dart';

import '../../../theme/theme_helper.dart';

class BookAppointmentTimeView extends StatelessWidget {
  final timeText;
  final index;
  final bool isSelected;

  const BookAppointmentTimeView(
      {Key? key, this.timeText, this.index, required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.v,
      padding: EdgeInsets.symmetric(vertical: 4.v),
      margin: EdgeInsets.only(right: 10.v),
      decoration: BoxDecoration(
          color: isSelected ? appTheme.blueShade800 : appTheme.whiteA700,
          border: Border.all(
              width: 0.5, color: appTheme.blueGray400.withOpacity(0.5)),
          borderRadius: BorderRadius.all(Radius.circular(30.v))),
      child: Center(
        child: Text(timeText ?? " - ",
            textAlign: TextAlign.center,
            style: theme.textTheme.headline3!.copyWith(
                color: isSelected ? appTheme.whiteA700 : appTheme.black900)),
      ),
    );
  }
}
