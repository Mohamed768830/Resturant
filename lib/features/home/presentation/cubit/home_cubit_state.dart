part of 'home_cubit_cubit.dart';

abstract class HomeCubitState extends Equatable {
  const HomeCubitState();

  @override
  List<Object> get props => [];
}

class HomeCubitInitial extends HomeCubitState {}
class ErrorState extends HomeCubitState {final  String error ;const ErrorState(this.error);}
class LoadingState extends HomeCubitState {}
class RestaurantSuccessState extends HomeCubitState {  final Restaurant restaurant ;const RestaurantSuccessState(this.restaurant);}
