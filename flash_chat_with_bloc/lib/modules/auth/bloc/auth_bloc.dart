import 'package:equatable/equatable.dart';
import 'package:flash_chat_with_bloc/service/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this.authService) : super(AuthInitial()) {
    on<SignIn>(_signIn);
    on<SignUp>(_signUp);
  }

  final AuthService authService;

  Future<void> _signIn(SignIn event, Emitter<AuthState> emit) async {
    await authService.login(
      event.context,
      email: event.email,
      password: event.password,
    );
  }

  Future<void> _signUp(SignUp event, Emitter<AuthState> emit) async {
    await authService.register(
      event.context,
      email: event.email,
      password: event.password,
    );
  }
}
