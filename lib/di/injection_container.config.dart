// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i4;
import 'package:pos_brandimic/core/network/network_info.dart' as _i5;
import 'package:pos_brandimic/di/app_module.dart' as _i12;
import 'package:pos_brandimic/features/auth/data/datasources/auth.dart' as _i9;
import 'package:pos_brandimic/features/auth/data/repositories/auth_repository.dart'
    as _i10;
import 'package:pos_brandimic/features/auth/presentation/cubit/auth_cubit.dart'
    as _i11;
import 'package:pos_brandimic/features/home/data/datasources/restaurant_api.dart'
    as _i6;
import 'package:pos_brandimic/features/home/data/repositories/restaurant_repositories.dart'
    as _i7;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.lazySingleton<_i3.Dio>(() => appModule.dio);
    gh.lazySingleton<_i4.InternetConnectionChecker>(
        () => appModule.internetChecker);
    gh.lazySingleton<_i5.NetworkInfo>(
        () => _i5.NetworkInfoImpl(gh<_i4.InternetConnectionChecker>()));
    gh.factory<_i6.RestaurantAPI>(() => _i6.RestaurantAPI(gh<_i3.Dio>()));
    gh.factory<_i7.RestaurantRepository>(
        () => _i7.RestaurantRepository(gh<_i6.RestaurantAPI>()));
    await gh.factoryAsync<_i8.SharedPreferences>(
      () => appModule.prefs,
      preResolve: true,
    );
    gh.factory<_i9.AuthAPI>(() => _i9.AuthAPI(gh<_i3.Dio>()));
    gh.factory<_i10.AuthRepository>(
        () => _i10.AuthRepository(gh<_i9.AuthAPI>()));
    gh.factory<_i11.AuthCubit>(() => _i11.AuthCubit(gh<_i10.AuthRepository>()));
    return this;
  }
}

class _$AppModule extends _i12.AppModule {}
