
import 'package:dio/dio.dart';

/// https://github.com/RifkiCS29/headline_news/blob/065a628e64c16fc671ce2ce15d47c977bc58ddd4/lib/common/shared.dart
/// https://github.com/RifkiCS29/headline_news/blob/065a628e64c16fc671ce2ce15d47c977bc58ddd4/lib/common/http_ssl_pinning.dart
abstract class HttpClient {
  Future<Response> get(String url,
      {Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onReceiveProgress});

  Future<Response> post(String url,
      {dynamic data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress});

  Future<Response> put(String url,
      {dynamic data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress});

  Future<dynamic> delete(String url,
      {dynamic data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress});
}