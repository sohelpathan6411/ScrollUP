import 'package:flutter/material.dart';
import 'package:getx_docto_appointment/core/app_export.dart';

import 'controller/select_package_controller.dart';
import 'views/packages_hor_card_view.dart';

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
          title: Text("Select Package"),
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
                    return PackagesHorCardView();
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
