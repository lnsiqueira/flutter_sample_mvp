import 'package:flutter_sample_mvp/air_quality/view/%20air_quality_view.dart';

import 'air_quality_presenter.dart';

class AirQualityPresenterImp implements AirQualityPresenter {
  late final AirQualityView _view;
  var _info = '';

  @override
  void get() {
    _info = 'Bad...';
    _view.getAirQuality(_info); //update view
  }

  @override
  set view(AirQualityView view) => _view = view;
}
