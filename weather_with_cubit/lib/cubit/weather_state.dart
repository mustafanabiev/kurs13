part of 'weather_cubit.dart';

class WeatherState extends Equatable {
  const WeatherState({
    this.status = FetchStatus.loading,
    this.weatherModel,
    this.error,
  });

  final FetchStatus status;
  final WeatherModel? weatherModel;
  final String? error;

  @override
  List<Object?> get props => [status, weatherModel, error];
}
