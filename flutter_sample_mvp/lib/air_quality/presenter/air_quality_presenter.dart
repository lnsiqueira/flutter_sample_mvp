import 'package:flutter_sample_mvp/air_quality/view/%20air_quality_view.dart';

abstract class AirQualityPresenter {
  void get();
  set view(AirQualityView view);
}
