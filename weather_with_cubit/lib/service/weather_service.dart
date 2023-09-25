import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';
import 'package:weather_with_cubit/constants/api_const.dart';
import 'package:weather_with_cubit/models/weather_model.dart';

class WeatherService {
  Future<WeatherModel?> weatherLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    // if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse) {
      Position position = await Geolocator.getCurrentPosition();
      final client = Client();
      final url = Uri.parse(ApiConst.getLocator(
        lat: position.latitude,
        lon: position.longitude,
      ));
      final response = await client.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = jsonDecode(response.body);
        return WeatherModel(
          id: data['current']['weather'][0]['id'],
          main: data['current']['weather'][0]['main'],
          description: data['current']['weather'][0]['description'],
          icon: data['current']['weather'][0]['icon'],
          temp: data['current']['temp'],
          country: data['timezone'],
          city: data['timezone'],
        );
      }
    }
    // }
    else {
      Position position = await Geolocator.getCurrentPosition();
      final client = Client();
      final url = Uri.parse(ApiConst.getLocator(
        lat: position.latitude,
        lon: position.longitude,
      ));
      final response = await client.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = jsonDecode(response.body);
        return WeatherModel(
          id: data['current']['weather'][0]['id'],
          main: data['current']['weather'][0]['main'],
          description: data['current']['weather'][0]['description'],
          icon: data['current']['weather'][0]['icon'],
          temp: data['current']['temp'],
          country: data['timezone'],
          city: data['timezone'],
        );
      }
    }
    return null;
  }

  Future<WeatherModel?> weatherName({String? cityName}) async {
    try {
      final client = Client();
      final url = Uri.parse(ApiConst.api(
        cityName: cityName ?? 'bishkek',
      ));
      final response = await client.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = jsonDecode(response.body);
        return WeatherModel(
          id: data['weather'][0]['id'] ?? 0,
          main: data['weather'][0]['main'] ?? '',
          description: data['weather'][0]['description'] ?? '',
          icon: data['weather'][0]['icon'] ?? '',
          temp: data['main']['temp'] ?? 0,
          country: data['sys']['country'] ?? '',
          city: data['name'] ?? '',
        );
      }
    } catch (e) {
      log('error: $e');
    }
    return null;
  }
}

final weatherService = WeatherService();
