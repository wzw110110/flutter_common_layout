import 'package:common_ui/http/http_method.dart';
import 'package:dio/dio.dart';

class DioInstance {
  static DioInstance? _instance;

  DioInstance._();

  static DioInstance instance() {
    return _instance ??= DioInstance._();
  }

  final Dio _dio = Dio();
  final _defaultTime = Duration(seconds: 30);

  void initDio({
    required String baseUrl,
    String httpMethod = HttpMethod.get,
    Duration? connectTimeout,
    Duration? receiveTimeOut,
    Duration? sendTimeOut,
    ResponseType? responseType = ResponseType.json,
    String? contentType,
  }) {
    _dio.options = BaseOptions(
        method: httpMethod,
        baseUrl: baseUrl,
        connectTimeout: connectTimeout ?? _defaultTime,
        receiveTimeout: receiveTimeOut ?? _defaultTime,
        sendTimeout: sendTimeOut ?? _defaultTime,
        responseType: responseType,
        contentType: contentType);
  }

  Future<Response> get(
      {required String path,
      Map<String, dynamic>? param,
      Options? options,
      CancelToken? cancelToken}) async {
    return await _dio.get(path,
        queryParameters: param,
        options: options ??
            Options(
                method: HttpMethod.get,
                receiveTimeout: _defaultTime,
                sendTimeout: _defaultTime),
        cancelToken: cancelToken);
  }

  Future<Response> post(
      {required String path,
        Object? data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken}) async {
    return await _dio.post(path,
        queryParameters: queryParameters,
        data: data,
        options: options ??
            Options(
                method: HttpMethod.get,
                receiveTimeout: _defaultTime,
                sendTimeout: _defaultTime),
        cancelToken: cancelToken);
  }
}