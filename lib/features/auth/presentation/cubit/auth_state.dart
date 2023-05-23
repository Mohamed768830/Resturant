part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}
class LoadingUserState extends AuthState {}
class SucUserState extends AuthState {
  final  UserData userData;
 const SucUserState({required this.userData});
}
class ErrorUserState extends AuthState {final String error;   const ErrorUserState(this.error);}

class SucLogOutState extends AuthState {
}

class SucLoginState extends AuthState {
  final  Login login;
  const SucLoginState({required this.login});
}
