import 'package:get/get.dart';

class UserProvider extends GetConnect {
  Future<void> getData() async {
    httpClient.get('url');
    httpClient.post('url');
    httpClient.patch('url');
    httpClient.put('url');
    httpClient.delete('url');
  }

  @override
  void onInit() {
    httpClient.baseUrl = 'YOUR-API-URL';
  }
}
