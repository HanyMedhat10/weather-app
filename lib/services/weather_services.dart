import 'package:dio/dio.dart';
import 'package:weather_app/services/weather_model.dart';

class WeatherService {
  final Dio dio;
  final key = '9fc192c3d9e34015b4b104053240205';
  final baseUrl = 'https://api.weatherapi.com/v1/forecast.json?';
  WeatherService({required this.dio});
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    Response response =
        await dio.get('${baseUrl}key=$key&q=$cityName&days=1');
    return WeatherModel.fromJson(response.data);
  }
}