import 'package:dio/dio.dart';

import '../models/air_quality_model.dart';

/// Class that accesses UK government API to return various information about the city of London [].
class AirQualityRepository {
  final dio = Dio();
  final url = 'https://api.tfl.gov.uk/AirQuality/';

  ///# Returns a type AirQualityModel object with all API data - AirQuality
  Future<AirQualityModel> fetchAirQuality() async {
    final response = await dio.get(url);
    final airQuality = AirQualityModel.fromJson(response.data);

    return airQuality;
  }
}
