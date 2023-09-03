import 'package:dio/dio.dart';

class ApiService {
  static const String baseUrl = 'https://googleapis.com';
  static Dio ins = Dio(_options);

  static final BaseOptions _options = BaseOptions(
    baseUrl: baseUrl,
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
    },
  );
}
