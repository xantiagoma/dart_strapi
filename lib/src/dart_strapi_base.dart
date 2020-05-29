import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:dart_strapi/src/utils/extends/functions.dart';

class Strapi {
  Strapi._constructor();

  static final Strapi _instance = Strapi._constructor();

  static Strapi newClient() {
    return Strapi._constructor();
  }

  factory Strapi() {
    return _instance;
  }

  static Strapi get instance {
    return _instance;
  }

  String _base_url;

  void initialize({
    String base_url = 'http://localhost:1337',
    String token = '',
  }) {
    _base_url = base_url;
    _httpClient.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options) async {
          if (token.isNotEmpty) {
            options.headers.putIfAbsent('Authorization', () => 'Bearer $token');
          }
          return options;
        },
      ),
    );
  }

  final _httpClient = Dio();

  /// ```json
  /// {
  ///   "prop": "value",
  ///   "prop_limit": "integer",
  ///   "prop_sort": "string",
  ///   "prop_start": "integer",
  ///   "prop_ne": "string",
  ///   "prop_lt": "string",
  ///   "prop_lte": "string",
  ///   "prop_gt": "string",
  ///   "prop_gte": "string",
  ///   "prop_contains": "string",
  ///   "prop_containss": "string",
  ///   "prop_in": "array[string]",
  ///   "prop_nin": "array[string]"
  /// }
  /// ```
  Future<List<ContentType>> find(
    String contentType, {
    Map<String, dynamic> queryParameters = const {},
  }) async {
    return await tryOrNullAsync(() async {
      final response = await _httpClient.get(
        '$_base_url/$contentType',
        queryParameters: queryParameters,
      );
      final List<dynamic> list = response.data;
      final parsed = list.map(
        (item) => ContentType.fromMap(contentType, item),
      );
      return parsed.toList();
    });
  }

  Future<ContentType> findOne(String contentType, String id) async {
    return await tryOrNullAsync(() async {
      final response = await _httpClient.get('$_base_url/$contentType/$id');
      final Map<String, dynamic> data = response.data;
      final parsed = ContentType.fromMap(contentType, data);
      return parsed;
    });
  }

  Future<int> count(String contentType) async {
    return await tryOrNullAsync(() async {
      final response = await _httpClient.get('$_base_url/$contentType/count');
      final int data = response.data;
      return data;
    });
  }

  Future<ContentType> create(ContentType content) async {
    return await tryOrNullAsync(() async {
      final response = await _httpClient.post(
        '$_base_url/${content.collectionName}',
        data: content.toMap(),
      );
      final data = response.data;
      return ContentType.fromMap(content.collectionName, data);
    });
  }

  Future<ContentType> update(ContentType content) async {
    return await tryOrNullAsync(() async {
      final response = await _httpClient.put(
        '$_base_url/${content.collectionName}/${content.id}',
        data: content.toMap(),
      );
      final data = response.data;
      return ContentType.fromMap(content.collectionName, data);
    });
  }

  Future<ContentType> delete(ContentType content) async {
    return await tryOrNullAsync(() async {
      final response = await _httpClient.delete(
        '$_base_url/${content.collectionName}/${content.id}',
        data: content.toMap(),
      );
      final data = response.data;
      return ContentType.fromMap(content.collectionName, data);
    });
  }

  Future<ContentType> deleteById(String contentType, String id) async {
    return await tryOrNullAsync(() async {
      final response = await _httpClient.delete(
        '$_base_url/$contentType/$id',
      );
      final data = response.data;
      return ContentType.fromMap(contentType, data);
    });
  }
}

class ContentType {
  Map<String, dynamic> data;
  String collectionName;

  ContentType(this.collectionName, this.data);

  dynamic get id => tryOrNull(
        () => data['id'],
      );

  DateTime get created_at => tryOrNull(
        () => DateTime.parse(data['created_at']),
      );

  DateTime get updated_at => tryOrNull(
        () => DateTime.parse(data['updated_at']),
      );

  factory ContentType.fromJson(
    String collectionName,
    String str,
  ) =>
      ContentType.fromMap(
        collectionName,
        json.decode(str),
      );

  factory ContentType.fromMap(
    String collectionName,
    Map<String, dynamic> json,
  ) =>
      ContentType(
        collectionName,
        json,
      );

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() =>
      Map.from(data)..putIfAbsent('_collection', () => collectionName);

  @override
  String toString() {
    return '$runtimeType(${toJson()})';
  }

  Future<bool> restore() async {
    final restore = await Strapi().findOne(collectionName, id);
    if (restore == null) {
      return false;
    }
    data = restore.data;
    return true;
  }

  Future<bool> save() async {
    final update = await Strapi().update(this);
    if (restore == null) {
      return false;
    }
    data = update.data;
    return true;
  }

  Future<bool> delete() async {
    final delete = await Strapi().delete(this);
    if (restore == null) {
      return false;
    }
    data = delete.data;
    return true;
  }
}
