import 'package:flutter/material.dart' show BuildContext, Locale;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../services/prefrence.dart';
import 'locale_state.dart';

class LocaleCubit extends Cubit<LocaleState> {
  // Passing an initial value (state) with a default 'Locale' to the super class.
  LocaleCubit() : super(SelectedLocale(const Locale('en')));

  // Once we call this method, the BlocBuilder<LocaleCubit>
  // in the 'main.dart' will rebuild the entire app with
  // the new emitted state that holds the 'ar' locale.
  static LocaleCubit get(BuildContext context) => BlocProvider.of(context);

  Future<void> toArabic() async {
    await CacheHelper.saveData(key: PrefKeys.langCode, value: "ar");
    emit(SelectedLocale(const Locale('ar')));
  }

  // Same as the previous method, but with the 'en' locale.
  Future<void> toEnglish() async {
    await CacheHelper.saveData(key: PrefKeys.langCode, value: "en");
    emit(SelectedLocale(const Locale('en')));
  }

  Future<void> setLocal(String languageCode) async {
    await CacheHelper.saveData(key: PrefKeys.langCode, value: languageCode);
    emit(SelectedLocale(Locale(languageCode)));
  }
}
