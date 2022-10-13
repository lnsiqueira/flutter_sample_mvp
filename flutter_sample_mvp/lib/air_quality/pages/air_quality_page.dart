import 'package:flutter/material.dart';
import 'package:flutter_sample_mvp/air_quality/presenter/air_quality_presenter.dart';
import 'package:flutter_sample_mvp/air_quality/presenter/air_quality_presenter_impl.dart';
import 'package:flutter_sample_mvp/air_quality/view/%20air_quality_view.dart';

class AirQualityPage extends StatefulWidget {
  const AirQualityPage({super.key});

  @override
  State<AirQualityPage> createState() => _AirQualityPageState();
}

class _AirQualityPageState extends State<AirQualityPage>
    implements AirQualityView {
  var info = '-';
  AirQualityPresenter presenter = AirQualityPresenterImp();

  @override
  void initState() {
    presenter.view = this;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AirQuality - London'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('icons/flags/png/gb.png', package: 'country_icons'),
            Padding(
              padding: const EdgeInsets.all(38.0),
              child: Text('$info'),
            ),
            ElevatedButton(
                onPressed: () {
                  presenter.get();
                },
                child: const Text('Get info'))
          ],
        ),
      ),
    );
  }

  @override
  void getAirQuality(String infoRefresh) {
    setState(() {
      info = infoRefresh;
    });
  }
}
