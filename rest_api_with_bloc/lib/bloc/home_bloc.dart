import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api_with_bloc/models/user_model.dart';
import 'package:rest_api_with_bloc/service/home_service.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeBlocState> {
  HomeBloc(this.service) : super(HomeInitial()) {
    on<HomeEvent>(_getUsers);
  }

  final HomeService service;

  Future<void> _getUsers(
    HomeEvent event,
    Emitter<HomeBlocState> emit,
  ) async {
    emit(HomeLoading());
    final users = await service.getUsers();
    if (users != null) {
      emit(HomeSuccess(users: users));
    } else {
      emit(HomeError(message: 'state is error'));
    }
  }
}
