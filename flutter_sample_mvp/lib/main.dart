import 'package:flutter/material.dart';
import 'package:flutter_sample_mvp/air_quality/pages/air_quality_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MVP',
      theme: ThemeData(primarySwatch: Colors.indigo),
      routes: {
        '/': (context) => const AirQualityPage(),
      },
    );
  }
}
