import 'package:dio/dio.dart';

class ApiServices {
  final _baseUrl = 'https://www.googleapis.com/books/v1';
  final Dio _dio;

  ApiServices(this._dio);
  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await _dio.get('$_baseUrl/$endpoint');
    print('Calling endpoint: $_baseUrl/$endpoint');
    print('Response: ${response.data}');

    return response.data;
  }
}
