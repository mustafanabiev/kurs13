import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flash_chat_with_bloc/modules/home/service/home_service.dart';
import 'package:flash_chat_with_bloc/service/token_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>(deleteAkk);
  }

  Future<void> removeData() async {
    await TokenService().removeData();
  }

  Future<void> deleteAkk(HomeEvent event, Emitter<HomeState> emit) async {
    await HomeService().delete(event.password ?? '');
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> streamMessage() {
    return HomeService.streamMessage();
  }

  Future<void> sendMessage(HomeEvent event) async {
    await HomeService.sendMessage(splitText(event.sms ?? ''));
  }

  String splitText(String text) {
    final sms = text.trim();
    if (sms != '') {
      return sms;
    } else {
      return '';
    }
  }
}
