class AirQualityModel {
  String? id;
  String? type;
  String? updatePeriod;
  String? updateFrequency;
  String? forecastURL;
  String? disclaimerText;
  List<CurrentForecast>? currentForecast;

  AirQualityModel(
      {this.id,
      this.type,
      this.updatePeriod,
      this.updateFrequency,
      this.forecastURL,
      this.disclaimerText,
      this.currentForecast});

  AirQualityModel.fromJson(Map<String, dynamic> json) {
    id = json['$id'];
    type = json['$type'];
    updatePeriod = json['updatePeriod'];
    updateFrequency = json['updateFrequency'];
    forecastURL = json['forecastURL'];
    disclaimerText = json['disclaimerText'];
    if (json['currentForecast'] != null) {
      currentForecast = <CurrentForecast>[];
      json['currentForecast'].forEach((v) {
        currentForecast!.add(new CurrentForecast.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$id'] = this.id;
    data['$type'] = this.type;
    data['updatePeriod'] = this.updatePeriod;
    data['updateFrequency'] = this.updateFrequency;
    data['forecastURL'] = this.forecastURL;
    data['disclaimerText'] = this.disclaimerText;
    if (this.currentForecast != null) {
      data['currentForecast'] =
          this.currentForecast!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CurrentForecast {
  String? id;
  String? type;
  String? forecastType;
  String? forecastID;
  String? publishedDate;
  String? forecastBand;
  String? forecastSummary;
  String? nO2Band;
  String? o3Band;
  String? pM10Band;
  String? pM25Band;
  String? sO2Band;
  String? forecastText;

  CurrentForecast(
      {this.id,
      this.type,
      this.forecastType,
      this.forecastID,
      this.publishedDate,
      this.forecastBand,
      this.forecastSummary,
      this.nO2Band,
      this.o3Band,
      this.pM10Band,
      this.pM25Band,
      this.sO2Band,
      this.forecastText});

  CurrentForecast.fromJson(Map<String, dynamic> json) {
    id = json['$id'];
    type = json['$type'];
    forecastType = json['forecastType'];
    forecastID = json['forecastID'];
    publishedDate = json['publishedDate'];
    forecastBand = json['forecastBand'];
    forecastSummary = json['forecastSummary'];
    nO2Band = json['nO2Band'];
    o3Band = json['o3Band'];
    pM10Band = json['pM10Band'];
    pM25Band = json['pM25Band'];
    sO2Band = json['sO2Band'];
    forecastText = json['forecastText'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$id'] = this.id;
    data['$type'] = this.type;
    data['forecastType'] = this.forecastType;
    data['forecastID'] = this.forecastID;
    data['publishedDate'] = this.publishedDate;
    data['forecastBand'] = this.forecastBand;
    data['forecastSummary'] = this.forecastSummary;
    data['nO2Band'] = this.nO2Band;
    data['o3Band'] = this.o3Band;
    data['pM10Band'] = this.pM10Band;
    data['pM25Band'] = this.pM25Band;
    data['sO2Band'] = this.sO2Band;
    data['forecastText'] = this.forecastText;
    return data;
  }
}
