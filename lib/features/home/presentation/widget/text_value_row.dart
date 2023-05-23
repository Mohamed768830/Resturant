import 'package:flutter/material.dart';
import 'package:pos_brandimic/core/Localization/app_localizations.dart';

class RowValueAndText extends StatelessWidget {
  const RowValueAndText({Key? key, required this.text, required this.value})
      : super(key: key);
  final String text;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            AppLocalizations.of(context)!.translate(text),
            style: const TextStyle(
                color: Color(0xffABBBC2),
                fontSize: 14.8,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
          ),
        ),
        Flexible(
          child: Text(
            value,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 17.0043,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
          ),
        ),
      ],
    );
  }
}
