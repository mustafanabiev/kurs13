import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:rest_api_with_bloc/constants/api_const.dart';
import 'package:rest_api_with_bloc/models/user_model.dart';

class HomeService {
  const HomeService(this.client);

  final http.Client client;

  Future<List<UserModel>?> getUsers() async {
    try {
      final url = Uri.parse(ApiConst.api);
      final response = await client.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = fromStringJson(response.body);
        return data;
      }
    } catch (e) {
      log('error: $e');
      return null;
    }
    return null;
  }
}

final homeService = HomeService(http.Client());
