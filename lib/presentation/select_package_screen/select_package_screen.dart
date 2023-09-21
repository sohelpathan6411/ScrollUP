import 'controller/select_package_controller.dart';
import 'package:flutter/material.dart';
import 'package:getx_docto_appointment/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SelectPackageScreen extends GetWidget<SelectPackageController> {
  const SelectPackageScreen({Key? key})
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
                imagePath: ImageConstant.imgPackagedetails,
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
