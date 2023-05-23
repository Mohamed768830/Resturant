import 'package:flutter/material.dart';

import '../Localization/app_localizations.dart';
import '../manage/colors.dart';

class CustomBottom extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  final double? width;
  final double? fontSize;
  final double? height;
  final Color? color;
  final double? radius;
  const CustomBottom({
    this.height,
    this.color,
    super.key,
    required this.onPressed,
    required this.text,
    this.width,
    this.radius,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 51,
      width: width ?? double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color ?? ColorManager.button,
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius ?? 9),
            )),
        onPressed: onPressed,
        child: Text(
          AppLocalizations.of(context)!.translate(text),
          style: TextStyle(
              fontSize: fontSize ?? 14.87,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              color: const Color(0xffFAFAFA)),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
        ),
      ),
    );
  }
}
