import 'package:flutter/material.dart';
import 'package:getx_docto_appointment/core/utils/size_utils.dart';

import '../../../theme/theme_helper.dart';

class BookAppointmentDayView extends StatelessWidget {
  final dayNameText;
  final dateText;
  final index;
  final bool isSelected;

  const BookAppointmentDayView(
      {Key? key,
      this.dayNameText,
      this.dateText,
      this.index,
      required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.v,
      padding: EdgeInsets.symmetric(vertical: 8.v),
      margin: EdgeInsets.only(right: 10.v),
      decoration: BoxDecoration(
          color: isSelected ? appTheme.blueShade800 : appTheme.whiteA700,
          border: Border.all(
              width: 0.5, color: appTheme.blueGray400.withOpacity(0.5)),
          borderRadius: BorderRadius.all(Radius.circular(30.v))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(dayNameText ?? " - ",
              style: theme.textTheme.headline4!.copyWith(
                  fontSize: 12.fSize,
                  color:
                      isSelected ? appTheme.whiteA700 : appTheme.blueGray400)),
          SizedBox(height: 5.v),
          Text(dateText ?? " - ",
              style: theme.textTheme.headline3!.copyWith(
                  color: isSelected ? appTheme.whiteA700 : appTheme.black900)),
        ],
      ),
    );
  }
}
