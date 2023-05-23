import 'package:flutter/material.dart';
import 'package:pos_brandimic/core/Localization/app_localizations.dart';
import '../manage/valuse_manger.dart';

class CustomHeadLeading extends StatelessWidget {
  const CustomHeadLeading({super.key, required this.ispay});
  final bool  ispay;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(AppLocalizations.of(context)!.translate("item"),
            style: const TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w600)),
        const Spacer(),
        Text(
          AppLocalizations.of(context)!.translate("qty"),
          style: const TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
        ),


        ispay==false? SizedBox(
          width: AppSize.width * .05,
        ): SizedBox(
          width: AppSize.width * .1,
        ),
        Text(AppLocalizations.of(context)!.translate("price"),
            style: const TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600))
      ],
    );
  }
}
