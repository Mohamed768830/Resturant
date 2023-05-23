import 'package:flutter/material.dart';
import 'package:pos_brandimic/core/widget/custom_alert_dialog.dart';

import '../../../../core/Localization/app_localizations.dart';

import '../../../../core/widget/custom_button.dart';
import 'order_item_dialog.dart';

class BottomAddCustomerDetails extends StatelessWidget {
  const BottomAddCustomerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBottom(
            text: "add",
            onPressed: () {
              orderItemDialog(context);
            }),
        const SizedBox(
          height: 15,
        ),
        CustomBottom(
            text: "confirm",
            onPressed: () {
              customAlertDialog(
                context: context,
                body: SizedBox(
                  width: 500,
                  height: 376,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                              AppLocalizations.of(context)!
                                  .translate("confirm_order"),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700)),
                        ),
                        const SizedBox(height: 38),
                        Flexible(
                          child: CustomBottom(
                            fontSize: 13.2,
                            height: 44,
                            width: 300,
                            onPressed: () {
                              // Navigator.of(context).pop();
                            },
                            text: "confirm",
                          ),
                        ),
                        const SizedBox(height: 25),
                        Flexible(
                          child: CustomBottom(
                            width: 300,
                            fontSize: 13.2,
                            height: 44,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            text: "back",
                          ),
                        ),
                      ]),
                ),
              );
            }),
      ],
    );
  }
}
