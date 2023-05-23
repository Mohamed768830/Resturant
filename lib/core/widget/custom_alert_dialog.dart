import 'package:flutter/material.dart';

import '../manage/colors.dart';

customAlertDialog({required BuildContext context, required Widget body}) {
  return showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
        //scrollable: true,
        elevation: 0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
            side: BorderSide(color: Color(0xff5C9EDD), width: 2)),
        backgroundColor: ColorManager.secondaryColor,
        content: body),
  );
}
