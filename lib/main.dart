import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_brandimic/core/Localization/app_localizations_setup.dart';
import 'package:pos_brandimic/features/auth/presentation/pages/login_page.dart';
import 'core/Localization/Blocs/Locale_Cubit/locale_cubit.dart';
import 'core/Localization/Blocs/Locale_Cubit/locale_state.dart';
import 'core/Localization/Blocs/providers.dart';
import 'core/services/prefrence.dart';
import 'di/injection_container.dart';
import 'features/auth/presentation/cubit/auth_cubit.dart';
import 'features/home/presentation/cubit/home_cubit_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configure();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LocaleCubit>(create: (_) => LocaleCubit()),
        BlocProvider(create: (context) => getIt<AuthCubit>() ),
        BlocProvider(create: (context) => getIt<HomeCubitCubit>()),

        // other blocs or cubits...
      ],
      child: FutureBuilder<String>(
        future: CacheHelper.getLanguageCode(),
        builder: (context, AsyncSnapshot<String> snapshot) {
          if (snapshot.hasData) {
            if (kDebugMode) {}
            LocaleCubit.get(context).setLocal(snapshot.data!);
          }
          else {
            LocaleCubit.get(context).setLocal('ar');
          }

          return BlocBuilder<LocaleCubit, LocaleState>(
            buildWhen: (previousState, currentState) =>
                previousState != currentState,
            builder: (_, localeState) {

              return MaterialApp(
                theme: ThemeData(
                  platform: TargetPlatform.android,
                  fontFamily: "Barlow",
                ),

                debugShowCheckedModeBanner: false,
                title: 'Cubit Demo',
                supportedLocales: AppLocalizationsSetup.supportedLocales,
                localizationsDelegates:AppLocalizationsSetup.localizationsDelegates,
                localeResolutionCallback: (deviceLocale, supportedLocales) {
                  for (var locale in supportedLocales) {
                    if (deviceLocale != null &&
                        deviceLocale.languageCode == locale.languageCode) {
                      return deviceLocale;
                    }
                  }

                  return supportedLocales.first;
                },

                // Each time a new state emitted, the app will be rebuilt with the new
                // locale.

                locale: localeState.locale,
                home: const LoginPage(),
              );
            },
          );
        },
      ),
    );
  }
}
