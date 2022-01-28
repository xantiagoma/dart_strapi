import 'package:dart_strapi/dart_strapi.dart';
import 'package:dart_strapi/src/models/models.dart';
import 'package:dio/dio.dart';
import 'package:tuple/tuple.dart';

class _Collection {
  final Strapi _client;

  _Collection(this._client);

  /// Get entries of collection-type resource
  ///
  /// [options]
  /// {@macro filtering}
  /// {@macro locale}
  /// {@macro publication-state}
  /// {@macro population}
  /// {@macro sort-pagination}
  ///
  Future<Tuple2<List<Map<String, dynamic>>?, Meta?>> get(
    String collection, {
    Options? options,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    void Function(int, int)? onReceiveProgress,
  }) async {
    final r = await _client.resource.get(
      collection,
      options: options,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
    final meta = r.mapOrNull((data) => data.meta);
    final data = r.mapOrNull((data) => data.data?.mapOrNull(
          collection: (value) => value.data,
        ));
    return Tuple2(data, meta);
  }

  /// Get single entry of collection-type resource
  ///
  /// [options]
  /// {@macro filtering}
  /// {@macro locale}
  /// {@macro publication-state}
  /// {@macro population}
  /// {@macro sort-pagination}
  ///
  Future<Tuple2<Map<String, dynamic>?, Meta?>> getOne(
    String single,
    int id, {
    Options? options,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    void Function(int, int)? onReceiveProgress,
  }) {
    return _client.single.get(
      "$single/$id",
      options: options,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
  }
}

extension CollectionX on Strapi {
  _Collection get collection => _Collection(this);
}
