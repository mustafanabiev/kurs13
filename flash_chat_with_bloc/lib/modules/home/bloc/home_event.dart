part of 'home_bloc.dart';

class HomeEvent {
  const HomeEvent({
    this.password,
    this.sms,
  });

  final String? password;
  final String? sms;
}
