import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api_with_bloc/models/user_model.dart';
import 'package:rest_api_with_bloc/service/home_service.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeCubitState> {
  HomeCubit(this.service) : super(HomeInitial());

  final HomeService service;

  Future<void> getUsers() async {
    emit(HomeLoading());
    final users = await service.getUsers();
    if (users != null) {
      emit(HomeSuccess(users: users));
    } else {
      emit(HomeError(message: 'users is null'));
    }
  }
}
