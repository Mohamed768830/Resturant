import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/Localization/app_localizations.dart';
import '../../../../core/manage/colors.dart';
import '../../../../core/widget/loader.dart';
import '../cubit/auth_cubit.dart';
import 'enter_your_password_page.dart';

class SelectUserPage extends StatefulWidget {
  const SelectUserPage({Key? key}) : super(key: key);

  @override
  State<SelectUserPage> createState() => _SelectUserPageState();
}

class _SelectUserPageState extends State<SelectUserPage> {
  @override
  void initState() {
    AuthCubit.get(context).loadUserData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state is LoadingUserState
              ? const CircularLoaderWidget()
              : state is SucUserState
                  ? SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 49.96, bottom: 40),
                            child: AppBar(
                              centerTitle: true,
                              backgroundColor: ColorManager.background,
                              elevation: 0,
                              title: Text(
                                AppLocalizations.of(context)!
                                    .translate("select_user"),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 52,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 84),
                            child: GridView.builder(
                              padding: const EdgeInsets.all(0.0),
                              itemCount: state.userData.message.length,
                              physics: const NeverScrollableScrollPhysics(),
                              primary: false,
                              shrinkWrap: true,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 344 / 150,
                                mainAxisSpacing: 40,
                                crossAxisSpacing: 40,
                              ),
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              EnterPasswordPage(
                                                userName: state.userData
                                                    .message[index].fullName,
                                              )),
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: ColorManager.secondaryColor,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Center(
                                      child: Text(
                                        state.userData.message[index].fullName,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 27.04,
                                          fontWeight: FontWeight.w700,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  : const SizedBox();
        },
      ),
    );
  }
}
