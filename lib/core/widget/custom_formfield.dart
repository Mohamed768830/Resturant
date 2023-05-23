import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Localization/app_localizations.dart';
import '../manage/assets_manager.dart';

class CustomFormField extends StatelessWidget {
  final String hintText;
  final bool obsecureText;

  final TextInputType textInputType;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final bool prefixIcon;
  final String? Function(String?)? validator;
  final int? maxLines;
  final Color? borderColor;
  final Color? hintColor;
  final double? borderRadius;
  const CustomFormField({
    this.borderRadius,
    this.hintColor,
    this.borderColor,
    Key? key,
    required this.hintText,
    required this.obsecureText,
    required this.textInputType,
    required this.controller,
    this.validator,
    this.onChanged,
    required this.prefixIcon,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onChanged: onChanged,
        validator: validator,
        maxLines: maxLines,
        keyboardType: textInputType,
        controller: controller,
        obscureText: obsecureText,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          fillColor: const Color(0xff2d303e),
          disabledBorder: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: borderColor ?? const Color(0xff595862),
                width: borderRadius ?? 0.3),
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          ),
          filled: true,
          prefixIcon: prefixIcon == true
              ? Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(
                    ImageAssets.search,
                    width: 21.26,
                    height: 21.26,
                  ),
                )
              : null,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          hintText: AppLocalizations.of(context)!.translate(hintText),
          hintStyle: TextStyle(
              color: hintColor ?? const Color(0xff889898),
              fontSize: 14.87,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: borderColor ?? const Color(0xff595862),
                width: borderRadius ?? 0.3),
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          ),
        ));
  }
}
