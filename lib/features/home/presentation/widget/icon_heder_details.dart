import 'package:flutter/material.dart';
import 'package:pos_brandimic/core/manage/colors.dart';
import 'package:pos_brandimic/features/home/presentation/widget/number_custom_add_to_table.dart';

import '../../../../core/Localization/app_localizations.dart';
import '../../../../core/manage/valuse_manger.dart';
import '../../../../core/widget/custom_alert_dialog.dart';
import '../../../../core/widget/custom_button.dart';
import '../../../../core/widget/custom_formfield.dart';
import 'order_item_dialog.dart';

var nameController = TextEditingController();
var countController = TextEditingController();

onTapAddCustomerToTable(BuildContext context) {
  return customAlertDialog(
    context: context,
    body: AlertDialog(
        // scrollable: true,
        backgroundColor: ColorManager.secondaryColor,
        elevation: 0,
        content: Container(
          width: AppSize.width / 4,
          height: AppSize.height * .6,
          color: ColorManager.secondaryColor,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                AppLocalizations.of(context)!
                    .translate("please_choose_customer"),
                style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomFormField(
                  prefixIcon: false,
                  hintText: "customer_Name",
                  obsecureText: false,
                  textInputType: TextInputType.text,
                  controller: nameController),
              const SizedBox(
                height: 30,
              ),
              Text(
                AppLocalizations.of(context)!.translate("people_table_count"),
                style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomAddToTable(),
              const Divider(
                color: Color(0xff393C49),
                thickness: 0.8,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomFormField(
                  prefixIcon: false,
                  hintText: "enter_people_count",
                  obsecureText: false,
                  textInputType: TextInputType.number,
                  controller: countController),
              const SizedBox(
                height: 20,
              ),
              const Spacer(),
              CustomBottom(
                  text: "continue",
                  onPressed: () {
                    orderItemDialog(context);
                  }),
            ],
          ),
        )),
  );
}
