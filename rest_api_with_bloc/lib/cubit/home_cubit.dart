import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api_with_bloc/models/user_model.dart';
import 'package:rest_api_with_bloc/service/home_service.dart';
import 'package:rest_api_with_bloc/utils/enam.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeCubitState> {
  HomeCubit(this.service) : super(HomeCubitState());

  final HomeService service;

  Future<void> getUsers() async {
    final users = await service.getUsers();
    if (users != null) {
      emit(HomeCubitState(status: FetchStatus.success, users: users));
    } else {
      emit(HomeCubitState(status: FetchStatus.error, message: 'user is null'));
    }
  }
}
