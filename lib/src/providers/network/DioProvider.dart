import 'package:dio/dio.dart';

import 'IApiProvider.dart';

class AxiosProvider implements IApiProvider {

  String baseUrl;
  String? token;
  AxiosProvider({required this.baseUrl, String? token}){
    this.baseUrl=baseUrl;
    this.token=token;
  }
  static AxiosProvider? _instance = null;
  final Dio _dio = Dio();

  @override
  IApiProvider getIstance({String? baseUrl, String? token}) {
    // TODO: implement getClient
    if(_instance == null)
      _instance = AxiosProvider(baseUrl: baseUrl!, token: token);
    return _instance!;
  }

  Future<dynamic> get(
      String path, {
        Object? data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
        ProgressCallback? onReceiveProgress,
      }) async {
    try {
      var token = this.token;
      print(token);
      _dio.options.headers['Authorization'] = 'Bearer ${token}';
      _dio.options.connectTimeout = Duration(seconds: 50000); // 5 seconds
      _dio.options.receiveTimeout = Duration(seconds: 50000);
      print('$baseUrl/$path');
      final response = await _dio.get('$baseUrl/$path', queryParameters: queryParameters);
      print(response);
      return response.data;
    } catch (e) {
      throw Exception('Failed to perform GET request: $e');
    }
  }

  Future<dynamic> post(
      String path, {
        Object? data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
        ProgressCallback? onSendProgress,
        ProgressCallback? onReceiveProgress,
      }) async {
    try {
      var token = this.token;
      print(token);
      _dio.options.headers['Authorization'] = 'Bearer ${token}';
      _dio.options.connectTimeout = Duration(seconds: 50000); // 5 seconds
      _dio.options.receiveTimeout = Duration(seconds: 50000); // 5 seconds
      print(_dio.options.headers['Authorization']);
      print('$baseUrl/$path');
      print(data);
      final response = await _dio.post('$baseUrl/$path', data: data, queryParameters: queryParameters);
      return response.data;
    } catch (e) {
      throw Exception('Failed to perform POST request: $e');
    }
  }

  Future<dynamic> patch(
      String path, {
        Object? data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
        ProgressCallback? onSendProgress,
        ProgressCallback? onReceiveProgress,
      }) async {
    try {
      var token = this.token;
      print(token);
      _dio.options.headers['Authorization'] = 'Bearer ${token}';
      final response = await _dio.patch('$baseUrl/$path', data: data, queryParameters: queryParameters);
      return response.data;
    } catch (e) {
      throw Exception('Failed to perform patch request: $e');
    }
  }

}
