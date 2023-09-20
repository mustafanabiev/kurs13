part of 'home_bloc.dart';

class HomeBlocState {}

class HomeInitial extends HomeBlocState {}

class HomeLoading extends HomeBlocState {}

class HomeSuccess extends HomeBlocState {
  HomeSuccess({this.users});

  final List<UserModel>? users;
}

class HomeError extends HomeBlocState {
  HomeError({this.message});

  final String? message;
}
