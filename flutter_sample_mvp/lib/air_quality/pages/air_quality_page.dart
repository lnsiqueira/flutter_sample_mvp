import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
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
            Text('$info'),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  'Low air pollution forecast valid from Thursday 13 October to end of Friday 14 October GMT'),
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
