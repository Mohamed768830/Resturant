import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pos_brandimic/core/routers/custom_navigate.dart';
import 'package:pos_brandimic/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:pos_brandimic/features/auth/presentation/pages/login_page.dart';
import '../Localization/Blocs/Locale_Cubit/locale_cubit.dart';
import '../Localization/app_localizations.dart';
import '../manage/assets_manager.dart';
import '../manage/colors.dart';
import '../services/prefrence.dart';
import 'custom_toast_app.dart';
import 'loader.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                alignment: Alignment.center,
                decoration: CacheHelper.getData(key: PrefKeys.langCode) == 'en'
                    ? BoxDecoration(
                    color: ColorManager.secondaryColor,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ))
                    : BoxDecoration(
                    color: ColorManager.secondaryColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    )),
                child: SvgPicture.asset(
                  ImageAssets.homeLogo,
                  width: 59.52,
                  height: 53.72,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: ColorManager.secondaryColor,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: ColorManager.secondaryColor,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        decoration:
                        CacheHelper.getData(key: PrefKeys.langCode) == 'en'
                            ? BoxDecoration(
                            color: ColorManager.background,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12.7533),
                              bottomLeft: Radius.circular(12.7533),
                            ))
                            : BoxDecoration(
                            color: ColorManager.background,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(12.7533),
                              bottomRight: Radius.circular(12.7533),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Container(
                            height: 59.52,
                            width: 59.52,
                            decoration: BoxDecoration(
                                color: ColorManager.button,
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: SvgPicture.asset(
                                ImageAssets.home,
                                width: 17,
                                height: 17,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                decoration: CacheHelper.getData(key: PrefKeys.langCode) == 'en'
                    ? BoxDecoration(
                    color: ColorManager.secondaryColor,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                    ))
                    : BoxDecoration(
                    color: ColorManager.secondaryColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                    )),
                child: InkWell(
                  onTap: () async {
                    if (await CacheHelper.getData(key: PrefKeys.langCode) ==
                        'en') {
                      setState(() {
                        BlocProvider.of<LocaleCubit>(context).toArabic();
                      });
                    } else {
                      setState(() {
                        BlocProvider.of<LocaleCubit>(context).toEnglish();
                      });
                    }
                  },
                  child: SvgPicture.asset(
                    ImageAssets.setting,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 12,
              child: Container(
                alignment: Alignment.bottomCenter,
// height: 446,
                decoration: CacheHelper.getData(key: PrefKeys.langCode) == 'en'
                    ? BoxDecoration(
                    color: ColorManager.secondaryColor,
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(15),
                    ))
                    : BoxDecoration(
                    color: ColorManager.secondaryColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                    )),
                child: Column(
                  children: [
                    Container(
                      height: 20,
                    ),
                    const Spacer(),
                    BlocConsumer<AuthCubit, AuthState>(
                      listener: (context, state) {
                        if(state is SucLogOutState){
                          navigateAndFinish(context, const LoginPage());
                          showToast(
                              message: AppLocalizations.of(context)!
                                  .translate("signed_out_successfully"),
                              state: ToastStates.SUCCESS);
                        }
                      },
                      builder: (context, state) {
                        return InkWell(
                          onTap: () {
                       AuthCubit.get(context).logOutUser();
                          },
                          child: state  is LoadingUserState?const CircularLoaderWidget(): SvgPicture.asset(
                            ImageAssets.logout,
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
