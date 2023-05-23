import 'dart:ui';

import 'package:fluttertoast/fluttertoast.dart';

import '../manage/colors.dart';
import '../manage/valuse_manger.dart';

void showToast({
  required String message,
  required ToastStates state,
}) =>
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor: choseToastColors(state),
      textColor: ColorManager.white,
      fontSize: AppSize.s16,
    );
// ignore: constant_identifier_names
enum ToastStates { SUCCESS, ERROR, WARNING }

Color choseToastColors(ToastStates state) {
  Color color;
  switch (state) {
    case ToastStates.SUCCESS:
      color = ColorManager.greenColor;
      break;
    case ToastStates.ERROR:
      color = ColorManager.error;
      break;
    case ToastStates.WARNING:
      color = ColorManager.greenColor;
      break;
  }
  return color;
}
