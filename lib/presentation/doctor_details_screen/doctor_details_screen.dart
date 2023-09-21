import 'controller/doctor_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:getx_docto_appointment/core/app_export.dart';

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
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 5.v),
              CustomImageView(
                imagePath: ImageConstant.imgDoctordetails1,
                height: 912.v,
                width: 428.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
