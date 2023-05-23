import 'package:flutter/material.dart';
import 'package:pos_brandimic/core/widget/custom_alert_dialog.dart';
import '../../../../core/Localization/app_localizations.dart';
import '../../../../core/manage/colors.dart';
import '../../../../core/widget/custom_button.dart';
import '../../../../core/widget/custom_formfield.dart';

class AddCustomerData extends StatelessWidget {
  AddCustomerData({Key? key}) : super(key: key);
  final addressController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 174,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.5),
        border: Border.all(color: const Color(0xff595862), width: 0.3),
        color: ColorManager.secondaryColor,
      ),
      child: InkWell(
        onTap: () {
          customAlertDialog(
            context: context,
            body: SizedBox(
              width: 500,
              height: 467.23,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 32,
                    ),
                    Text(
                      AppLocalizations.of(context)!.translate("add_customer"),
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    CustomFormField(
                        prefixIcon: false,
                        hintText: "customer_Name",
                        obsecureText: false,
                        textInputType: TextInputType.text,
                        controller: nameController),
                    const SizedBox(
                      height: 24,
                    ),
                    CustomFormField(
                        prefixIcon: false,
                        hintText: "customer_Phone_Number",
                        obsecureText: false,
                        textInputType: TextInputType.number,
                        controller: phoneController),
                    const SizedBox(
                      height: 24,
                    ),
                    CustomFormField(
                        prefixIcon: false,
                        hintText: "customer_Address",
                        obsecureText: false,
                        textInputType: TextInputType.text,
                        controller: addressController),
                    const SizedBox(
                      height: 50,
                    ),
                    CustomBottom(
                        text: "save",
                        onPressed: () {
                          //save api
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomBottom(
                        text: "save_open_menu",
                        onPressed: () {
                          //
                        }),
                  ],
                ),
              ),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.add,
              size: 28,
              color: Colors.white,
            ),
            const SizedBox(width: 7),
            Flexible(
              child: Text(
                AppLocalizations.of(context)!.translate("add_customer_normal"),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
