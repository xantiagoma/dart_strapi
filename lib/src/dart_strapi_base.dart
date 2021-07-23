import 'package:dio/dio.dart';

import 'models/models.dart' as models;
import 'utils.dart';

/// {@template queryParameters}
/// queryParameters can follow:
/// ```json
/// {
///   "prop": "value",                   // Equal
///   "prop_eq": "value",                // Equal
///   "prop_ne": "string",               // Not equal
///   "prop_lt": "string",               // Less than
///   "prop_gt": "string",               // Greater than
///   "prop_lte": "string",              // Less than or equal to
///   "prop_gte": "string",              // Greater than or equal to
///   "prop_in": "array[string]",        // Included in an array
///   "prop_nin": "array[string]",       // Not included in an array
///   "prop_contains": "string",         // Contains
///   "prop_ncontains": "string",        // Doesn't contain
///   "prop_containss": "string",        // Contains, case sensitive
///   "prop_ncontainss": "string",       // Doesn't contain, case sensitive
///   "prop_null": "string",             // Is null or not null
///   "_sort": "string",
///   // _sort=email:ASC / _sort=email:DESC / _sort=email:asc,dateField:desc
///   "_limit": "integer",               // Default is 100 / -1 (full set)
///   "_start": "integer",               //
///   "_where": "integer",               //
///   "prop.attrs.other_ac": "same",     // Deep filtering
///   "_publicationState": "live or preview"
///   // _publicationState=preview&published_at_null=true (just drafts)
/// }
/// ```
///
/// ### **_where** [complex queries](https://strapi.io/documentation/developer-docs/latest/developer-resources/content-api/content-api.html#complex-queries)
/// * `GET /restaurants?_where[price_gte]=3`
/// * `GET /restaurants?_where[0][price_gte]=3&[0][price_lte]=7`
///
/// > OR and AND operations are available starting from v3.1.0
///
/// > See [qs library](https://github.com/ljharb/qs) This will give you full power to create complex queries with logical AND and OR operations.
///
/// #### AND operator
/// ```dart
/// const query = qs.stringify({
///   _where: [{ stars: 1 }, { pricing_lte: 20 }],
/// });
/// // GET /restaurants?_where[0][stars]=1&_where[1][pricing_lte]=20
/// const query = qs.stringify({
///   _where: [{ pricing_gte: 20 }, { pricing_lte: 50 }],
/// });
/// // GET /restaurants?_where[0][pricing_gte]=20&_where[1][pricing_lte]=50
/// ```
///
/// #### OR operator
/// ```dart
/// const query = qs.stringify({ _where: { _or: [{ stars: 1 }, { pricing_gt: 30 }] } });
/// // GET /restaurants?_where[_or][0][stars]=1&_where[_or][1][pricing_gt]=30
/// const query = qs.stringify({ _where: { _or: [{ pricing_lt: 10 }, { pricing_gt: 30 }] } });
/// // GET /restaurants?_where[_or][0][pricing_lt]=10&_where[_or][1][pricing_gt]=30
///
/// // The query engine implicitly uses the OR operation when you pass an array of values in an expression.
/// // GET /restaurants?stars=1&stars=2
/// ```
///
/// #### AND and OR operators
/// ```dart
/// const query = qs.stringify({
///   _where: {
///     _or: [
///       [{ stars: 2 }, { pricing_lt: 80 }], // implicit AND
///       [{ stars: 1 }, { pricing_gte: 50 }], // implicit AND
///     ],
///   },
/// });
/// // GET /restaurants?_where[_or][0][0][stars]=2&_where[_or][0][1][pricing_lt]=80&_where[_or][1][0][stars]=1&_where[_or][1][1][pricing_gte]=50
/// // ---------------------- deep filtering -----------------
/// const query = qs.stringify({
///   _where: {
///     _or: [
///       [{ stars: 2 }, { pricing_lt: 80 }], // implicit AND
///       [{ stars: 1 }, { 'categories.name': 'French' }], // implicit AND
///     ],
///   },
/// });
/// // GET /restaurants?_where[_or][0][0][stars]=2&_where[_or][0][1][pricing_lt]=80&_where[_or][1][0][stars]=1&_where[_or][1][1][categories.name]=French
/// ```
/// {@endtemplate}

/// {@template authTokenUse}
/// Token is not automatically set when [OkResponse] use
/// ```dart
/// strapiClient.token = data['jwt];
/// ```
/// to set it permanetly or attach with options on your request
/// ```dart
/// final page = await strapiClient.create(
///   'pages',
///   {'id': 'lalala', 'title': 'lalala test'},
///   options: Options(
///     headers: {
///       'Authorization': 'Bearer token',
///     },
///   ),
/// );
/// ```
/// {@endtemplate}

/// Strapi Client
class Strapi {
  late final String base_url;
  late final Dio _httpClient;

  Dio get http => _httpClient;

  Strapi(
    String base_url, {
    Dio? httpClient,
    String? token,
    BaseOptions? options,
  }) {
    this.base_url = base_url.purgeEnd('/');
    _httpClient = httpClient ?? Dio(options);
    if (options != null) {
      _httpClient.options = options;
    }
    _httpClient.options.baseUrl = this.base_url;
    _httpClient.options.headers = {
      for (final entry in _httpClient.options.headers.entries)
        entry.key: entry.value,
      if (token != null) 'Authorization': 'Bearer $token',
    };
  }

  String? get token => _httpClient.options.headers['Authorization'];

  set token(String? token) {
    _httpClient.options.headers = {
      for (final entry in _httpClient.options.headers.entries)
        entry.key: entry.value,
      if (token != null) 'Authorization': 'Bearer $token',
    };
  }

  /// Collection Type - Get a list of {content-type} entries
  ///
  /// {@macro queryParameters}
  Future<models.Response<List<models.Entry>>> find(
    String collectionName, {
    Map<String, dynamic> queryParameters = const {},
    Options? options,
  }) async {
    try {
      final response = await _httpClient.get(
        '$base_url/$collectionName',
        queryParameters: queryParameters,
        options: options,
      );
      if (!(response.data is List)) {
        throw 'Not list response';
      }

      final list = response.data as List<dynamic>;

      final entries = list
          .map(
            (e) => models.Entry(
              collectionName: collectionName,
              id: e['id'] is String
                  ? models.Identifier.string(e['id'])
                  : models.Identifier.integer(e['id']),
              data: e,
            ),
          )
          .toList();
      return models.OkResponse(entries);
    } catch (e) {
      return models.ErrorResponse(e.toString());
    }
  }

  /// Collection Type - Get a specific {content-type} entry
  ///
  /// {@macro queryParameters}
  Future<models.Response<models.Entry>> findOne(
    String collectionName,
    String id, {
    Map<String, dynamic> queryParameters = const {},
    Options? options,
  }) async {
    try {
      final response = await _httpClient.get(
        '$base_url/$collectionName/$id',
        queryParameters: queryParameters,
        options: options,
      );
      if (!(response.data is Map)) {
        throw 'Not map found';
      }
      return models.OkResponse(
        models.Entry(
          collectionName: collectionName,
          id: models.Identifier.string(id),
          data: response.data,
        ),
      );
    } catch (e) {
      return models.ErrorResponse(e.toString());
    }
  }

  /// Collection Type - Count {content-type} entries
  ///
  /// {@macro queryParameters}
  Future<models.Response<int>> count(
    String collectionName, {
    Map<String, dynamic> queryParameters = const {},
    Options? options,
  }) async {
    try {
      final response = await _httpClient.get(
        '$base_url/$collectionName/count',
        queryParameters: queryParameters,
        options: options,
      );
      if (!(response.data is int)) {
        throw 'No int count response';
      }
      return models.OkResponse(response.data);
    } catch (e) {
      return models.ErrorResponse(e.toString());
    }
  }

  /// Collection Type - Create a {content-type} entry
  ///
  /// {@macro queryParameters}
  Future<models.Response<models.Entry>> create(
    String collectionName,
    dynamic data, {
    Map<String, dynamic> queryParameters = const {},
    Options? options,
  }) async {
    try {
      final response = await _httpClient.post(
        '$base_url/$collectionName',
        data: data,
        queryParameters: queryParameters,
        options: options,
      );

      if (!(response.data is Map)) {
        throw 'Created data not map';
      }

      if (response.data['id'] == null) {
        throw 'Created null id';
      }

      final id = response.data['id'] is String
          ? models.StringIdentifier(response.data['id'])
          : models.IntIdentifier(response.data['id']);

      return models.OkResponse(
        models.Entry(
          collectionName: collectionName,
          id: id,
          data: response.data,
        ),
      );
    } catch (e) {
      return models.ErrorResponse(e.toString());
    }
  }

  /// Collection Type - Update a {content-type} entry
  ///
  /// {@macro queryParameters}
  Future<models.Response<models.Entry>> update(
    models.Entry entry, {
    Map<String, dynamic> queryParameters = const {},
    Options? options,
  }) async {
    try {
      final response = await _httpClient.put(
        '$base_url/${entry.collectionName}/${entry.identifier}',
        data: entry.data,
        queryParameters: queryParameters,
        options: options,
      );

      if (!(response.data is Map)) {
        throw 'Updated data not map';
      }

      if (response.data['id'] == null) {
        throw 'Updated null id';
      }

      return models.OkResponse(
        entry.copyWith(
          data: response.data,
        ),
      );
    } catch (e) {
      return models.ErrorResponse(e.toString());
    }
  }

  /// Collection Type - Delete a {content-type} entry
  ///
  /// {@macro queryParameters}
  Future<models.Response<models.Entry>> remove(
    models.Entry entry, {
    Map<String, dynamic> queryParameters = const {},
    Options? options,
  }) async {
    return await removeById(
      entry.collectionName,
      entry.identifier,
      queryParameters: queryParameters,
      options: options,
    );
  }

  /// Collection Type - Delete a {content-type} entry
  ///
  /// {@macro queryParameters}
  Future<models.Response<models.Entry>> removeById(
    String collectionName,
    String id, {
    Map<String, dynamic> queryParameters = const {},
    Options? options,
  }) async {
    try {
      final response = await _httpClient.delete(
        '$base_url/$collectionName/$id',
        queryParameters: queryParameters,
        options: options,
      );
      return models.OkResponse(
        models.Entry(
          collectionName: collectionName,
          id: models.Identifier.string(id),
          data: response.data,
        ),
      );
    } catch (e) {
      return models.ErrorResponse(e.toString());
    }
  }

  /// Single Type - Get the {content-type} content
  Future<models.Response<Object>> getPage(
    String contentType, {
    Options? options,
  }) async {
    try {
      final response = await _httpClient.get(
        '$base_url/$contentType',
        options: options,
      );

      if (!(response.data is Map)) {
        throw 'Not map found';
      }
      return models.OkResponse(
        response.data,
      );
    } catch (e) {
      return models.ErrorResponse(e.toString());
    }
  }

  /// Single Type - Update the {content-type} content
  Future<models.Response<Object>> updatePage(
    String contentType, {
    required dynamic data,
    Options? options,
  }) async {
    try {
      final response = await _httpClient.put(
        '$base_url/$contentType',
        data: data,
        options: options,
      );

      if (!(response.data is Map)) {
        throw 'Updated data not map';
      }

      if (response.data['id'] == null) {
        throw 'Updated null id';
      }

      return models.OkResponse(
        response.data,
      );
    } catch (e) {
      return models.ErrorResponse(e.toString());
    }
  }

  /// Single Type - Delete the {content-type} content
  Future<models.Response<Object>> removePage(
    String collectionName, {
    Options? options,
  }) async {
    try {
      final response = await _httpClient.delete(
        '$base_url/$collectionName',
        options: options,
      );

      return models.OkResponse(
        response.data,
      );
    } catch (e) {
      return models.ErrorResponse(e.toString());
    }
  }

  /// Local register
  /// {@macro authTokenUse}
  Future<models.Response<Object>> register(
    String username,
    String email,
    String password, {
    Options? options,
  }) async {
    try {
      final response = await _httpClient.post(
        '$base_url/auth/local/register',
        options: options,
        data: {
          'username': username,
          'email': email,
          'password': password,
        },
      );

      return models.OkResponse(
        response.data,
      );
    } catch (e) {
      return models.ErrorResponse(e.toString());
    }
  }

  /// Local login
  /// {@macro authTokenUse}
  Future<models.Response<Object>> login(
    String identifier,
    String password, {
    Options? options,
  }) async {
    try {
      final response = await _httpClient.post(
        '$base_url/auth/local',
        options: options,
        data: {
          'identifier': identifier,
          'password': password,
        },
      );

      return models.OkResponse(
        response.data,
      );
    } catch (e) {
      return models.ErrorResponse(e.toString());
    }
  }

  /// Local password recovery email
  Future<models.Response<Object>> forgotPassword(
    String email, {
    Options? options,
  }) async {
    try {
      final response = await _httpClient.post(
        '$base_url/auth/forgot-password',
        options: options,
        data: {
          'email': email,
        },
      );

      return models.OkResponse(
        response.data,
      );
    } catch (e) {
      return models.ErrorResponse(e.toString());
    }
  }

  /// Local password recovery with email code
  Future<models.Response<Object>> resetPassword(
    String code,
    String password, {
    Options? options,
  }) async {
    try {
      final response = await _httpClient.post(
        '$base_url/auth/reset-password',
        options: options,
        data: {
          'code': code,
          'password': password,
          'passwordConfirmation': password,
        },
      );

      return models.OkResponse(
        response.data,
      );
    } catch (e) {
      return models.ErrorResponse(e.toString());
    }
  }

  /// Local resend email validation
  Future<models.Response<Object>> sendEmailConfirmation(
    String email, {
    Options? options,
  }) async {
    try {
      final response = await _httpClient.post(
        '$base_url/auth/send-email-confirmation',
        options: options,
        data: {
          'email': email,
        },
      );

      return models.OkResponse(
        response.data,
      );
    } catch (e) {
      return models.ErrorResponse(e.toString());
    }
  }

  /// Local resend email validation
  Future<models.Response<Object>> me({
    Options? options,
  }) async {
    try {
      final response = await _httpClient.get(
        '$base_url/users/me',
        options: options,
      );

      return models.OkResponse(
        response.data,
      );
    } catch (e) {
      return models.ErrorResponse(e.toString());
    }
  }

  /// HTTP Get to server
  /// {@macro queryParameters}
  Future<models.Response<Object>> get(
    String path, {
    Map<String, dynamic> queryParameters = const {},
    Options? options,
  }) async {
    try {
      final response = await _httpClient.get(
        '$base_url/$path',
        queryParameters: queryParameters,
        options: options,
      );

      return models.OkResponse(response.data);
    } catch (e) {
      return models.ErrorResponse(e.toString());
    }
  }

  /// HTTP POST to server
  /// {@macro queryParameters}
  Future<models.Response<Object>> post(
    String path, {
    Map<String, dynamic> queryParameters = const {},
    Options? options,
    dynamic data,
  }) async {
    try {
      final response = await _httpClient.post(
        '$base_url/$path',
        queryParameters: queryParameters,
        options: options,
        data: data,
      );

      return models.OkResponse(response.data);
    } catch (e) {
      return models.ErrorResponse(e.toString());
    }
  }

  /// HTTP PUT to server
  /// {@macro queryParameters}
  Future<models.Response<Object>> put(
    String path, {
    Map<String, dynamic> queryParameters = const {},
    Options? options,
    dynamic data,
  }) async {
    try {
      final response = await _httpClient.put(
        '$base_url/$path',
        queryParameters: queryParameters,
        options: options,
        data: data,
      );

      return models.OkResponse(response.data);
    } catch (e) {
      return models.ErrorResponse(e.toString());
    }
  }

  /// HTTP DELETE to server
  /// {@macro queryParameters}
  Future<models.Response<Object>> delete(
    String path, {
    Map<String, dynamic> queryParameters = const {},
    Options? options,
    dynamic data,
  }) async {
    try {
      final response = await _httpClient.delete(
        '$base_url/$path',
        queryParameters: queryParameters,
        options: options,
        data: data,
      );

      return models.OkResponse(response.data);
    } catch (e) {
      return models.ErrorResponse(e.toString());
    }
  }

  /// HTTP PATCH to server
  /// {@macro queryParameters}
  Future<models.Response<Object>> patch(
    String path, {
    Map<String, dynamic> queryParameters = const {},
    Options? options,
    dynamic data,
  }) async {
    try {
      final response = await _httpClient.patch(
        '$base_url/$path',
        queryParameters: queryParameters,
        options: options,
        data: data,
      );

      return models.OkResponse(response.data);
    } catch (e) {
      return models.ErrorResponse(e.toString());
    }
  }
}
