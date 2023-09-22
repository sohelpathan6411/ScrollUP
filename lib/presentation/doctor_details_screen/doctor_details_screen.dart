import 'controller/doctor_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:getx_docto_appointment/core/app_export.dart';

import 'views/analytics_count_circle_view.dart';
import 'views/book_appointment_day_view.dart';
import 'views/book_appointment_time_view.dart';

// ignore_for_file: must_be_immutable
class DoctorDetailsScreen extends GetWidget<DoctorDetailsController> {
  const DoctorDetailsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 100.v,
          toolbarHeight: 100.v,
          leading: InkWell(
            onTap: (() => Get.back()),
            child: Container(
                margin: EdgeInsets.all(25.v),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        width: 1,
                        color: appTheme.blueGray400.withOpacity(0.3))),
                child: Icon(
                  Icons.arrow_back,
                  color: appTheme.blueGray400,
                )),
          ),
          title: Text("Book Appointment"),
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.v),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: _profileInfoDetails(),
              ),
              SizedBox(height: 25.v),
              Divider(
                color: appTheme.blueGray400.withOpacity(0.6),
                thickness: 0.3,
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: _analyticsDetails(),
              ),
              SizedBox(height: 30.v),
              _bookAppointment(),
              SizedBox(height: 20.v),
            ],
          ),
        ),
      ),
    );
  }

  //profile details
  Widget _profileInfoDetails() {
    return Row(
      children: [
        Stack(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgMybookings1,
              height: 100.v,
              width: 100.h,
              radius: BorderRadius.all(Radius.circular(100)),
              fit: BoxFit.fill,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Icon(
                Icons.verified,
                color: appTheme.blueShade800,
                size: 20.v,
              ),
            )
          ],
        ),
        SizedBox(width: 30.v),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(4.0.v),
              child: Text("Dr. Johny Wilson", style: theme.textTheme.headline2),
            ),
            Padding(
              padding: EdgeInsets.all(4.0.v),
              child: Text("Dentist", style: theme.textTheme.headline6),
            ),
            SizedBox(height: 4.v),
            Padding(
              padding: EdgeInsets.all(4.0.v),
              child: Row(
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
                  SizedBox(width: 5.v),
                  Icon(
                    Icons.map,
                    color: appTheme.blueShade800,
                    size: 18.v,
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }

  //analytics Details
  Widget _analyticsDetails() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AnalyticsCountCircleView(
          icon: Icons.group,
          countText: "7,500+",
          labelText: "Patients",
        ),
        AnalyticsCountCircleView(
          icon: Icons.work,
          countText: "10+",
          labelText: "Years Exp.",
        ),
        AnalyticsCountCircleView(
          icon: Icons.star_half_outlined,
          countText: "4.9+",
          labelText: "Rating",
        ),
        AnalyticsCountCircleView(
          icon: Icons.message_rounded,
          countText: "4.9+",
          labelText: "Rating",
        ),
      ],
    );
  }

  //booking date and time
  Widget _bookAppointment() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text('BOOK_APPOINTMENT'.tr, style: theme.textTheme.headline6),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Text('Day'.tr, style: theme.textTheme.headline2),
        ),
        SizedBox(
          height: 65.v,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20),
              itemCount: 5,
              itemBuilder: (BuildContext context, index) {
                return InkWell(
                  onTap: () {
                    controller.setDayIndex(index);
                  },
                  child: Obx(
                    (() => BookAppointmentDayView(
                          dayNameText: "Mon",
                          dateText: "3 Oct",
                          index: index,
                          isSelected:
                              controller.selectedDayIndex.value == index,
                        )),
                  ),
                );
              }),
        ),
        SizedBox(width: 20.v),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Text('Time'.tr, style: theme.textTheme.headline2),
        ),
        SizedBox(
          height: 55.v,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20.v),
              itemCount: 5,
              itemBuilder: (BuildContext context, index) {
                return InkWell(
                  onTap: () {
                    controller.setTimeIndex(index);
                  },
                  child: Obx(
                    (() => BookAppointmentTimeView(
                          timeText: "7:00 PM",
                          index: index,
                          isSelected:
                              controller.selectedTimeIndex.value == index,
                        )),
                  ),
                );
              }),
        ),
        SizedBox(width: 12.v),
      ],
    );
  }
}
