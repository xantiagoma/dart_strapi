import 'package:dart_strapi/dart_strapi.dart';
import 'package:dart_strapi/src/models/models.dart';
import 'package:dio/dio.dart';
import 'package:tuple/tuple.dart';

class _Single {
  final Strapi _client;

  _Single(this._client);

  /// Get a single-type record
  ///
  /// [options]
  /// {@macro filtering}
  /// {@macro locale}
  /// {@macro publication-state}
  /// {@macro population}
  /// {@macro sort-pagination}
  ///
  Future<Tuple2<Map<String, dynamic>?, Meta?>> get(
    String single, {
    Options? options,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    void Function(int, int)? onReceiveProgress,
  }) async {
    final r = await _client.resource.get(
      single,
      options: options,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
    final meta = r.mapOrNull((data) => data.meta);
    final data = r.mapOrNull((data) => data.data?.mapOrNull(
          single: (value) => value.data,
        ));
    return Tuple2(data, meta);
  }
}

extension SingleX on Strapi {
  _Single get single => _Single(this);
}
