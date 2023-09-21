import 'controller/review_booking_controller.dart';
import 'package:flutter/material.dart';
import 'package:getx_docto_appointment/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ReviewBookingScreen extends GetWidget<ReviewBookingController> {
  const ReviewBookingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 7.h),
          child: Column(
            children: [
              SizedBox(height: 5.v),
              CustomImageView(
                imagePath: ImageConstant.imgReviewbooking1,
                height: 897.v,
                width: 414.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
