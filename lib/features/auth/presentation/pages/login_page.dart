import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pos_brandimic/core/Localization/app_localizations.dart';
import 'package:pos_brandimic/features/auth/presentation/pages/select_user_screen.dart';
import '../../../../core/manage/assets_manager.dart';
import '../../../../core/manage/colors.dart';
import '../../../../core/widget/custom_button.dart';
import '../../../../core/widget/custom_formfield.dart';
import '../../../../core/widget/custom_toast_app.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var linkController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: ColorManager.background,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: ColorManager.secondaryColor,
                borderRadius: BorderRadius.circular(20)),
            width: 426,
            height: 326,
            child: Padding(
              padding: const EdgeInsets.only(left: 55, right: 55, top: 57),
              child: Column(
                children: [
                  SvgPicture.asset(
                    ImageAssets.logo,
                    width: 59.52,
                    height: 59.55,
                  ),
                  const SizedBox(
                    height: 29.2,
                  ),
                  CustomFormField(
                      prefixIcon: false,
                      hintText: "system_link",
                      obsecureText: false,
                      textInputType: TextInputType.visiblePassword,
                      controller: linkController),
                  const SizedBox(
                    height: 21.4,
                  ),
                  CustomBottom(
                    onPressed: () {
                      String link = linkController.value.text;
                      if (link.isNotEmpty) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SelectUserPage()),
                        );
                      } else {
                        showToast(
                            message: AppLocalizations.of(context)!
                                .translate("error_link"),
                            state: ToastStates.ERROR);
                      }
                    },
                    text: "connect",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
