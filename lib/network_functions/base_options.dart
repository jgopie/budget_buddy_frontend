import 'package:budget_buddy_frontend/constants.dart';
import 'package:dio/dio.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: backend_url,
    connectTimeout: Duration(
      seconds: 120,
    ),
    receiveTimeout: Duration(seconds: 120),
  ),
);
