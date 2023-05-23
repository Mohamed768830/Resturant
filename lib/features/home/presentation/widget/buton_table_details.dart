import 'package:flutter/material.dart';

import '../../../../core/Localization/app_localizations.dart';
import '../../../../core/manage/colors.dart';
import '../../../../core/routers/custom_navigate.dart';
import '../../../../core/widget/custom_button.dart';
import 'complete_order_dialog.dart';


class ButTableDescription extends StatelessWidget {
  const ButTableDescription ({Key? key, required this.onPressedAdd}) : super(key: key);
final   Function() onPressedAdd;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: CustomBottom(
                text: "add",
                onPressed: onPressedAdd,
                //     () {
                //
                //   onTapAddCustomerToTable(context);
                // },
              ),
            ),
            const SizedBox(
              width: 17,
            ),
            Flexible(
              child: CustomBottom(
                  text: "separete",
                  onPressed: () {}),
            ),
            const SizedBox(
              width: 17,
            ),
            Flexible(
              child: CustomBottom(
                  text: "move", onPressed: () {}),
            ),
            const SizedBox(
              width: 17,
            ),
            Flexible(
              child: CustomBottom(
                  text: "merge",
                  onPressed: () {}),
            ),
          ],
        ),
        const SizedBox(
          height: 13,
        ),
        CustomBottom(
            text: "checkout",
            onPressed: () {
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  alignment: Alignment.center,
                  insetPadding: EdgeInsets.zero,
                  contentPadding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: 2,
                        color:
                        ColorManager.button),
                    borderRadius:
                    BorderRadius.circular(17),
                  ),
                  backgroundColor:
                  ColorManager.secondaryColor,
                  content: SizedBox(
                    width: 500,
                    height: 376,
                    child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment
                            .center,
                        mainAxisAlignment:
                        MainAxisAlignment
                            .center,
                        children: [
                          Flexible(
                            child: Text(
                                AppLocalizations.of(
                                    context)!
                                    .translate(
                                    "confirm_order"),
                                maxLines: 1,
                                overflow:
                                TextOverflow
                                    .ellipsis,
                                softWrap: true,
                                style: const TextStyle(
                                    color: Colors
                                        .white,
                                    fontSize: 20,
                                    fontWeight:
                                    FontWeight
                                        .w700)),
                          ),
                          const SizedBox(
                              height: 38),
                          Flexible(
                            child: CustomBottom(
                              fontSize: 13.2,
                              height: 44,
                              width: 300,
                              onPressed: () {
                                navigateTo(context, const CompleteOrderDialog( ));
                              },
                              text: "confirm",
                            ),
                          ),
                          const SizedBox(
                              height: 25),
                          Flexible(
                            child: CustomBottom(
                              width: 300,
                              fontSize: 13.2,
                              height: 44,
                              onPressed: () {
                                Navigator.of(
                                    context)
                                    .pop();
                              },
                              text: "back",
                            ),
                          ),
                        ]),
                  ),
                ),
              );
            }),
      ],
    );
  }
}
