part of 'home_cubit.dart';

class HomeCubitState {
  HomeCubitState({
    this.status = FetchStatus.loading,
    this.users,
    this.message,
  });

  final FetchStatus status;
  final List<UserModel>? users;
  final String? message;

  HomeCubitState copyWith({
    FetchStatus? status,
    List<UserModel>? users,
    String? message,
  }) {
    return HomeCubitState(
      status: status ?? this.status,
      users: users ?? this.users,
      message: message ?? this.message,
    );
  }
}

// class HomeInitial extends HomeCubitState {}

// class HomeLoading extends HomeCubitState {}

// class HomeSuccess extends HomeCubitState {
//   HomeSuccess({this.users});

//   final List<UserModel>? users;
// }

// class HomeError extends HomeCubitState {
//   HomeError({this.message});

//   final String? message;
// }
