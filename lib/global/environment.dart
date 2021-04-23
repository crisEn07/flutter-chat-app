import 'dart:io';

class Environment {
  static String apiUrl = Platform.isAndroid
      ? 'http://100.100.100.239:8080/api'
      : 'http://localhost:8080/api';

  static String socketUrl = Platform.isAndroid
      ? 'http://100.100.100.239:8080'
      : 'http://localhost:8080';

}
