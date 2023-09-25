import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_with_cubit/models/weather_model.dart';
import 'package:weather_with_cubit/service/weather_service.dart';
import 'package:weather_with_cubit/utils/enum.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this.service) : super(const WeatherState());

  final WeatherService service;

  Future<void> weatherName({String? cityName}) async {
    try {
      final weatherData = await service.weatherName(cityName: cityName);
      emit(WeatherState(
        status: FetchStatus.success,
        weatherModel: weatherData,
      ));
    } catch (e) {
      emit(WeatherState(status: FetchStatus.error, error: e.toString()));
    }
  }

  Future<void> weatherLocation() async {
    try {
      final weatherData = await service.weatherLocation();
      emit(WeatherState(
        status: FetchStatus.success,
        weatherModel: weatherData,
      ));
    } catch (e) {
      emit(WeatherState(status: FetchStatus.error, error: e.toString()));
    }
  }
}
