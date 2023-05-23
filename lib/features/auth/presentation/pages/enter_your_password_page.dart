import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_brandimic/core/routers/custom_navigate.dart';
import 'package:pos_brandimic/core/widget/custom_toast_app.dart';
import 'package:pos_brandimic/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:pos_brandimic/features/home/presentation/pages/home_page.dart';
import '../../../../core/Localization/app_localizations.dart';
import '../../../../core/manage/colors.dart';
import '../../../../core/services/prefrence.dart';
import '../../../../core/widget/custom_button.dart';
import '../../../../core/widget/custom_formfield.dart';
import '../../../../core/widget/loader.dart';

class EnterPasswordPage extends StatefulWidget {
  final String? userName;

  const EnterPasswordPage({super.key, this.userName});

  @override
  State<EnterPasswordPage> createState() => _EnterPasswordPageState();
}

class _EnterPasswordPageState extends State<EnterPasswordPage> {
  var passwordController = TextEditingController();

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
              padding: const EdgeInsets.only(left: 55, right: 55, top: 77),
              child: Column(
                children: [
                  Text(
                    "${AppLocalizations.of(context)!.translate("welcome_back")}${widget.userName!}",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 46.5,
                  ),
                  CustomFormField(
                      prefixIcon: false,
                      hintText: "password",
                      obsecureText: true,
                      textInputType: TextInputType.visiblePassword,
                      controller: passwordController),
                  const SizedBox(
                    height: 21.4,
                  ),
                  BlocConsumer<AuthCubit, AuthState>(
                    listener: (context, state) {
                      if (state is SucLoginState) {
                        CacheHelper.saveData(
                            key: "user", value: widget.userName);
                        CacheHelper.saveData(
                            key: "password",
                            value: passwordController.value.text);
                        navigateAndFinish(context, const HomePage());
                        showToast(
                            message: AppLocalizations.of(context)!
                                .translate("logged_in_successfully"),
                            state: ToastStates.ERROR);
                      } else if (state is ErrorUserState) {
                        showToast(
                            message: AppLocalizations.of(context)!
                                .translate("error_password_not_corect"),
                            state: ToastStates.ERROR);
                      }
                    },
                    builder: (context, state) {
                      return state is LoadingUserState
                          ? const CircularLoaderWidget()
                          : CustomBottom(
                              onPressed: () {
                                String passwordValue =
                                    passwordController.value.text;
                                if (passwordValue.isNotEmpty) {
                                  AuthCubit.get(context).loginUser(
                                      usr: "administrator", pwd: passwordValue);
                                } else {
                                  showToast(
                                      message: AppLocalizations.of(context)!
                                          .translate("error_password"),
                                      state: ToastStates.ERROR);
                                }
                              },
                              text: "login",
                            );
                    },
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
