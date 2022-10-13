import 'package:flutter_sample_mvp/air_quality/repositories/air_quality_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final repository = AirQualityRepository();

  test('Get AirQuality in London', () async {
    final response = await repository.fetchAirQuality();
    print(response.currentForecast!.first.forecastSummary);
  });
}
