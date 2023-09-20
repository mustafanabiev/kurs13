part of 'home_cubit.dart';

class HomeCubitState {}

class HomeInitial extends HomeCubitState {}

class HomeLoading extends HomeCubitState {}

class HomeSuccess extends HomeCubitState {
  HomeSuccess({this.users});

  final List<UserModel>? users;
}

class HomeError extends HomeCubitState {
  HomeError({this.message});

  final String? message;
}
