part of 'weather_cubit.dart';

@immutable
abstract class WeatherState {}

class WeatherInitial extends WeatherState {}

class Weatherloading extends WeatherState {}

class WeatherSuccess extends WeatherState {}

class WeatherFailur extends WeatherState {}
