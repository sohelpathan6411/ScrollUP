import '../doctor_details_screen/views/book_appointment_time_view.dart';
import 'controller/my_bookings_controller.dart';
import 'package:flutter/material.dart';
import 'package:getx_docto_appointment/core/app_export.dart';

import 'views/bookings_hor_card_view.dart';

// ignore_for_file: must_be_immutable
class MyBookingsScreen extends GetWidget<MyBookingsController> {
  const MyBookingsScreen({Key? key})
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
          title: Text("My Bookings"),
          actions: [
            InkWell(
              onTap: (() => Get.back()),
              child: Container(
                  padding: EdgeInsets.all(5.v),
                  margin: EdgeInsets.only(right: 20.v),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: 1,
                          color: appTheme.blueGray400.withOpacity(0.3))),
                  child: Icon(
                    Icons.search,
                    color: appTheme.blueGray400,
                  )),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(
                      bottom: 60.v, top: 10.v, left: 7.h, right: 7.h),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, index) {
                    return BookingCardHorView();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
