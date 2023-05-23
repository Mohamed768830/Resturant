import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pos_brandimic/features/auth/data/repositories/auth_repository.dart';

import '../../../../core/services/prefrence.dart';
import '../../data/models/login/login.dart';
import '../../data/models/userData/user_data.dart';

part 'auth_state.dart';

@Injectable()
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authRepository) : super(AuthInitial());
  static AuthCubit get(context) => BlocProvider.of(context);
  final AuthRepository authRepository;

  loadUserData() async {
    try {
      emit(LoadingUserState());
      await authRepository.fetchUserDate().then((value) {
        emit(SucUserState(userData: value));
      });
    } catch (e) {
      emit(ErrorUserState(e.toString()));
    }
  }

  loginUser({
    required String usr,
    required String pwd,
  }) async {
    try {
      emit(LoadingUserState());
      await authRepository.login(usr: usr, pwd: pwd).then((value) {
        emit(SucLoginState(login: value));
      });
    } catch (e) {
      emit(ErrorUserState(e.toString()));
    }
  }

  logOutUser( ) async {
    try {
      emit(LoadingUserState());
      await authRepository.logout(usr: CacheHelper.getData(key: "user"), pwd: CacheHelper.getData(key: "password")).then((value) {
        emit(SucLogOutState());
      });
    } catch (e) {
      emit(ErrorUserState(e.toString()));
    }
  }
}
