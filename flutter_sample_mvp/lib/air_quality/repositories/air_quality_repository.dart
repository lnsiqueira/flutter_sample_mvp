import 'package:dio/dio.dart';

import '../models/air_quality_model.dart';

class AirQualityRepository {
  final dio = Dio();
  final url = 'https://api.tfl.gov.uk/AirQuality/';

  Future<AirQualityModel> fetchAirQuality() async {
    final response = await dio.get(url);
    final airQuality = AirQualityModel.fromJson(response.data);

    return airQuality;
  }
}
