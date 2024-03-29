class ApiConst {
  static const String apiKey = '8399a11d4cc690469e5d3c2caa02dc98';
  // static const String cityName = 'batken';
  static String api({String? cityName}) =>
      'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey';

  static String getLocator({double? lat, double? lon}) {
    return 'https://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$lon&appid=8399a11d4cc690469e5d3c2caa02dc98';
  }

  static String getIcon(String icon, int size) {
    return 'https://openweathermap.org/img/wn/$icon@${size}x.png';
  }
}
