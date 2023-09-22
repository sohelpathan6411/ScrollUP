import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:getx_docto_appointment/core/utils/size_utils.dart';

import '../../../core/utils/image_constant.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image_view.dart';

class BookingCardHorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.v),
      margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.v),
      decoration: BoxDecoration(
          border: Border.all(
              width: 0.5, color: appTheme.blueGray400.withOpacity(0.5)),
          borderRadius: BorderRadius.all(Radius.circular(16.v))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.v, horizontal: 10.h),
            child: Row(
              children: [
                Text('Aug 25,2920', style: theme.textTheme.headline3),
                SizedBox(width: 10.h),
                Text('-', style: theme.textTheme.headline3),
                SizedBox(width: 10.h),
                Text('10:00 AM', style: theme.textTheme.headline3),
              ],
            ),
          ),
          Divider(
            color: appTheme.blueGray400.withOpacity(0.6),
            thickness: 0.2,
          ),
          SizedBox(height: 15.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMybookings1,
                height: 80.v,
                width: 80.h,
                radius: BorderRadius.all(Radius.circular(8)),
                fit: BoxFit.fill,
              ),
              SizedBox(width: 15.v),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(4.0.v),
                    child: Text("Dr. Johny Wilson",
                        style: theme.textTheme.headline3),
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.all(4.0.v),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: appTheme.blueShade800,
                          size: 18.v,
                        ),
                        SizedBox(width: 5.v),
                        SizedBox(
                          width: (mediaQueryData.size.width / 2.4),
                          child: Text("New York, United states",
                              style: theme.textTheme.headline6),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.all(4.0.v),
                    child: Row(
                      children: [
                        Icon(
                          Icons.airplane_ticket,
                          color: appTheme.blueShade800,
                          size: 18.v,
                        ),
                        SizedBox(width: 5.v),
                        Text("Booking ID: ", style: theme.textTheme.headline6),
                        SizedBox(width: 5.v),
                        Text("#ASDFF55543",
                            style: theme.textTheme.headline3!.copyWith(
                              color: appTheme.blueShade800,
                            )),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 12.v),
          Divider(
            color: appTheme.blueGray400.withOpacity(0.6),
            thickness: 0.2,
          ),
          SizedBox(height: 12.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: CustomButton(
                  bgColor: appTheme.blueShade800.withOpacity(0.1),
                  text: "Cancel",
                  fontColor: appTheme.blueShade800,
                ),
              ),
              SizedBox(width: 15.v),
              Expanded(
                flex: 1,
                child: CustomButton(
                  text: "Reschedule",
                ),
              ),
            ],
          ),
          SizedBox(height: 15.v),
        ],
      ),
    );
  }
}
