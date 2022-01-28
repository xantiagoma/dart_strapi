import 'package:dart_strapi/dart_strapi.dart';
import 'package:dart_strapi/src/models/models.dart';
import 'package:dio/dio.dart' hide Response;

class _Resource {
  final Strapi _client;

  _Resource(this._client);

  /// Get [resource] from the API
  ///
  /// [resource] is the name of the resource
  ///
  ///
  /// [queryParams] is a map of query parameters using:
  ///
  /// {@macro filtering}
  /// {@macro locale}
  /// {@macro publication-state}
  /// {@macro population}
  /// {@macro sort-pagination}
  ///
  Future<Response> get(
    String resource, {
    Options? options,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    void Function(int, int)? onReceiveProgress,
  }) async {
    try {
      final response = await _client.httpClient.get(
        "${_client.apiPath}/${resource}",
        options: options,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );

      // TODO: Check if empty
      final json = response.data;

      return ResponseData.fromJson(json);
    } catch (e) {
      return Response.error(e.toString());
    }
  }
}

extension ResourceX on Strapi {
  _Resource get resource => _Resource(this);
}
