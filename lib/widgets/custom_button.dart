import 'package:flutter/material.dart';
import 'package:getx_docto_appointment/core/utils/size_utils.dart';

import '../theme/theme_helper.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget,
      this.bgColor,
      this.fontColor});

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;
  Color? bgColor;
  Color? fontColor;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(text ?? "",
              textAlign: TextAlign.center,
              style: theme.textTheme.headline3!
                  .copyWith(color: fontColor ?? appTheme.whiteA700)),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(text ?? "",
          textAlign: TextAlign.center,
          style: theme.textTheme.headline3!
              .copyWith(color: fontColor ?? appTheme.whiteA700));
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? (45.h),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      backgroundColor: bgColor ?? appTheme.blueShade800,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    );
  }
}
