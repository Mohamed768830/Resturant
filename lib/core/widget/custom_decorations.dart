import 'package:flutter/material.dart';

import '../manage/colors.dart';

class Decorations {
  static boxDecorationShaded({
    Color? color,
    Color? shadowColor,
    Color? borderColor,
    double? radius,
  }) {
    return BoxDecoration(
        color: color ?? Colors.white,
        boxShadow: [
          BoxShadow(
            color: shadowColor ?? Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 3),
          )
        ],
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 8)),
        border: Border.all(
            color: borderColor ?? ColorManager.appColor, width: 0.5));
  }

  static Decoration createRectangleDecoration({double? radius}) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(radius ?? 10),
      color: ColorManager.containerColor,
      // border: Border.all(
      //   color: ColorManager.containerColor,
      //   width: 2.0,
      // ),
    );
  }

  // new BoxDecoration  to wallet
  static Decoration createRectangleDecorationOnlyBottom() {
    return BoxDecoration(
      color: ColorManager.appColor,
      borderRadius: const BorderRadius.only(
        bottomRight: Radius.circular(15),
        bottomLeft: Radius.circular(15),
      ),
      border: Border.all(
        color: ColorManager.appColor,
        width: 2.0,
      ),
    );
  }

  static createRectangleDecorationOnlyTob({
    Color? color,
    Color? shadowColor,
    Color? borderColor,
    double? radius,
  }) {
    return BoxDecoration(
        color: color ?? Colors.white,
        boxShadow: [
          BoxShadow(
            color: shadowColor ?? Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 3),
          )
        ],
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
        border: Border.all(
            color: borderColor ?? ColorManager.appColor, width: 0.5));
  }
}
