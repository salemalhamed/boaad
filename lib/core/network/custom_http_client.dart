import 'package:dio/dio.dart';

class CustomHttpClient {
  // Private static instance of the class
  static final CustomHttpClient _instance = CustomHttpClient._internal();

  // Dio instance
  late Dio dio;

  // Private constructor
  CustomHttpClient._internal() {
    dio = Dio(
      BaseOptions(
        headers: {
          'Accept': 'application/json',
        },
        validateStatus: (status) {
          switch (status) {
            case 200:
            case 201:
            case 400:
            case 401:
            case 404:
            case 422:
              return true;
          }
          return false;
        },
      ),
    );
  }

  // Factory constructor to return the single instance
  factory CustomHttpClient() {
    return _instance;
  }
}
