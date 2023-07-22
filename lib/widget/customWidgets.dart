// ignore_for_file: file_names, prefer_conditional_assignment, sized_box_for_whitespace

import 'package:collab_library/constants.dart';
import 'package:collab_library/logic/colors.dart';
import 'package:collab_library/logic/font_family.dart';
import 'package:collab_library/utils/loading_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget customTag({required String courseName}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: AppColor.primaryColor,
    ),
    child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: Text(
        courseName,
        style: const TextStyle(
          color: kwhite,
          fontSize: 10,
        ),
      ),
    ),
  );
}

Widget customTitleText(
  String title, {
  BuildContext? context,
  double? width,
  Color? colors,
  TextAlign? textAlign,
  double? spacing,
  double? size,
  TextStyle? style,
  TextOverflow? textOverflow,
  final String? validatorText,
  FontWeight? fontWeight,
  String? fontFamily,
  DecorationImage? image,
  TextDecoration? decoration,
  Null Function()? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: SizedBox(
      width: width,
      child: Text(
        title,
        overflow: textOverflow ?? TextOverflow.ellipsis,
        textAlign: textAlign ?? TextAlign.start,
        maxLines: 1,
        style: style ??
            Get.textTheme.titleSmall!.copyWith(
              color: colors ?? AppColor.blackColor,
              fontFamily: fontFamily ?? FontFamily.sfRegular,
              fontWeight: fontWeight ?? FontWeight.w700,
              letterSpacing: spacing ?? 1,
              fontSize: size ?? 20,
              decoration: decoration ?? TextDecoration.none,
            ),
      ),
    ),
  );
}

Widget customDescriptionText(
  String title, {
  BuildContext? context,
  Color? colors,
  double? width,
  TextAlign? textAlign,
  FontWeight? fontWeight,
  FontStyle? fontStyle,
  double? spacing,
  double? fontSize,
  String? fontFamily,
  TextOverflow? textOverflow,
  TextStyle? style,
  Null Function()? onTap,
  TextDecoration? decoration,
}) {
  return GestureDetector(
    onTap: onTap,
    child: SizedBox(
      width: width,
      child: Text(
        title,
        overflow: textOverflow ?? TextOverflow.clip,
        textAlign: textAlign,
        style: style ??
            Get.textTheme.bodySmall!.copyWith(
              height: 1.5,
              fontSize: fontSize ?? 14,
              letterSpacing: spacing ?? 0.5,
              color: colors ?? AppColor.blackColor,
              fontFamily: fontFamily ?? FontFamily.sfBold,
              fontStyle: fontStyle ?? FontStyle.normal,
              fontWeight: fontWeight ?? FontWeight.normal,
              decoration: decoration ?? TextDecoration.none,
            ),
      ),
    ),
  );
}

class CustomFillButton extends StatelessWidget {
  const CustomFillButton({
    Key? key,
    this.onTap,
    this.width,
    this.textSize,
    this.textColor,
    this.buttonColor,
    this.borderRadius,
    this.fontWeight,
    this.isLoading = false,
    required this.buttonText,
  }) : super(key: key);
  final double? width;
  final double? textSize;
  final Color? textColor;
  final Color? buttonColor;
  final String? buttonText;
  final VoidCallback? onTap;
  final FontWeight? fontWeight;
  final BorderRadiusGeometry? borderRadius;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width ?? Get.width,
        height: 50,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: borderRadius ?? BorderRadius.circular(10),
        ),
        child: Center(
          child: (isLoading)
              ? LoadingWidget()
              : customTitleText(
                  buttonText!,
                  size: textSize ?? 16,
                  colors: textColor!,
                  fontWeight: fontWeight ?? FontWeight.w600,
                ),
        ),
      ),
    );
  }
}

class CustomRowButton extends StatelessWidget {
  const CustomRowButton({
    Key? key,
    this.onTap,
    this.width,
    this.widget,
    this.textSize,
    this.fontWeight,
    this.textColor,
    this.borderColor,
    this.buttonColor,
    this.borderRadius,
    this.isLoading = false,
    required this.buttonText,
  }) : super(key: key);
  final double? width;
  final Widget? widget;
  final double? textSize;
  final Color? textColor;
  final Color? buttonColor;
  final Color? borderColor;
  final String? buttonText;
  final VoidCallback? onTap;
  final FontWeight? fontWeight;
  final BorderRadiusGeometry? borderRadius;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width ?? Get.width,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: buttonColor,
          border: Border.all(
            width: 1,
            color: borderColor ?? Colors.transparent,
          ),
          borderRadius: borderRadius ?? BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: (isLoading)
                  ? LoadingWidget()
                  : customTitleText(
                      buttonText!,
                      size: textSize ?? 16,
                      colors: textColor!,
                      fontWeight: fontWeight ?? FontWeight.w600,
                    ),
            ),
            // const Gap(10),
            widget ?? Container(),
          ],
        ),
      ),
    );
  }
}

class CustomBorderButton extends StatelessWidget {
  const CustomBorderButton({
    Key? key,
    this.onTap,
    this.width,
    this.textSize,
    this.textColor,
    this.buttonColor,
    this.fontWeight,
    this.borderRadius,
    this.isLoading = false,
    required this.buttonText,
    required this.borderColor,
  }) : super(key: key);
  final double? width;
  final bool isLoading;
  final double? textSize;
  final Color? textColor;
  final Color borderColor;
  final String? buttonText;
  final Color? buttonColor;
  final VoidCallback? onTap;
  final FontWeight? fontWeight;
  final BorderRadiusGeometry? borderRadius;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width ?? Get.width,
        height: 50,
        decoration: BoxDecoration(
          // color: buttonColor!,
          border: Border.all(
            width: 1,
            color: borderColor,
          ),
          borderRadius: borderRadius ?? BorderRadius.circular(10),
        ),
        child: Center(
          child: (isLoading)
              ? LoadingWidget()
              : customTitleText(
                  buttonText!,
                  size: textSize ?? 16,
                  colors: textColor!,
                  fontWeight: fontWeight ?? FontWeight.w600,
                ),
        ),
      ),
    );
  }
}
