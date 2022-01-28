import 'package:dio/dio.dart';

/// # Strapi Client
/// {@template filtering}
/// ## Filtering
///
/// ```
/// GET /api/:pluralApiId?filters[field][operator]=value
/// ```
///
/// Queries can accept a `filters` parameter with the following syntax:
///
/// | Operator | Description |
/// | ---- | ---- |
/// | $eq	| Equal |
/// | $ne	| Not equal |
/// | $lt	| Less than |
/// | $lte	| Less than or equal to |
/// | $gt	| Greater than |
/// | $gte	| Greater than or equal to |
/// | $in	| Included in an array |
/// | $notIn	| Not included in an array |
/// | $contains	| Contains (case-sensitive) |
/// | $notContains	| Does not contain (case-sensitive) |
/// | $containsi	| Contains |
/// | $notContainsi	| Does not contain |
/// | $null	| Is null |
/// | $notNull	| Is not null |
/// | $between	| Is between |
/// | $startsWith	| Starts with |
/// | $endsWith	| Ends with |
/// | $or	| Joins the filters in an "or" expression |
/// | $and	| Joins the filters in an "and" expression |
///
/// ### Examples
///
/// #### Find users having 'John' as first name
/// ```
/// GET /api/users?filters[username][$eq]=John
/// ```
///
/// #### Find multiple restaurants with ids 3, 6, 8
/// ```
/// GET /api/restaurants?filters[id][$in][0]=3&filters[id][$in][1]=6&filters[id][$in][2]=8
/// ```
///
/// #### Complex filtering
/// ```
/// GET /api/books?filters[$or][0][date][$eq]=2020-01-01&filters[$or][1][date][$eq]=2020-01-02&filters[author][name][$eq]=Kai%20doe
/// ```
///
/// #### Deep filtering
/// ```
/// GET /api/restaurants?filters[chef][restaurants][stars][$eq]=5
/// ```
///
/// {@endtemplate}
///
/// {@template locale}
/// ## Locale
///
/// ```
/// GET /api/{content-type}?locale={locale-code}
/// ```
///
/// Getting localized entries with the `locale` parameter
///
/// The locale API parameter can be used to fetch entries only for a specified locale.
///
/// It takes a `{locale-code}` as value ([see full list of available locales](https://github.com/strapi/strapi/blob/master/packages/plugins/i18n/server/constants/iso-locales.json)). or use `all` to fetch entries for all locales that have been configured in the admin panel.
///
/// > If the `locale` parameter isn't defined, it will be set to the default locale. `en` is the default locale when the i18n plugin is installed, so by default a GET request to `/api/restaurants` will return the same response as a request to `/api/restaurants?locale=en`.
///
/// The `localizations` (object) can be included if specifically requested by appending `?populate=localizations` to the URL
///
/// {@endtemplate}
/// {@template publication-state}
/// ## Publication State
///
/// Queries can accept a `publicationState` parameter to fetch entries based on their publication state:
/// * `live`: returns only published entries (default)
/// * `preview`: returns both draft entries & published entries
///
/// > To retrieve only draft entries, combine the preview publication state and the publishedAt fields:
/// ```
/// GET /api/articles?publicationState=preview&filters[publishedAt][$null]=true
/// ```
///
/// {@endtemplate}
///
/// {@template population}
/// ## Population & Field Selection
///
/// ### Field selection
///
/// ```
/// GET /api/users?fields[0]=title&fields[1]=body
/// ```
///
/// Queries can accept a `fields` parameter to select only some fields. By default, only the following types of fields are returned
///
/// * String (string, text, richtext, enumeration, email, password, and uid)
/// * Date (date, time, datetime, timestamp)
/// * Number (integer, biginteger, float, decimal)
/// * Generic (boolean, array, json)
///
/// > Field selection will not work on relational, media, component, or dynamic zone fields, to see how to properly populate these refer to the population documentation.
///
/// ### Population
///
/// Queries can accept a populate parameter to populate various field types:
///
/// * Relations & media fields
/// * Components & dynamic zones
///
/// #### Relation & Media fields
///
/// ##### Populate 1 level for all relations
/// ```
/// GET /api/articles?populate=%2A
/// ```
///
/// ##### Populate 1 level: categories
/// ```
/// GET /api/articles?populate[0]=categories
/// ```
///
/// ##### Populate 2 levels: author and author.company
/// ```
/// GET /api/articles?populate[author][populate][0]=company
/// ```
///
/// #### Component & Dynamic Zones
///
/// ##### Deeply populate a 2 level component & media
/// ```
/// GET /api/articles?populate[0]=seoData&populate[1]=seoData.sharedImage&populate[2]=seoData.sharedImage.media
/// ```
/// ##### Deeply populate a dynamic zone with 2 components
/// ```
/// GET /api/articles?populate[testDZ][populate]=%2A
/// ```
///
/// #### Combining Population with other operators
///
/// ##### Populate with field selection
/// ```
/// GET /api/articles?fields[0]=title&fields[1]=slug&populate[headerImage][fields][0]=name&populate[headerImage][fields][1]=url
/// ```
///
/// {@endtemplate}
///
/// {@template sort-pagination}
/// ## Sort & Pagination
///
/// ### Sorting
///
/// Queries can accept a sort parameter that allows sorting on one or multiple fields with the following syntax:
///
/// #### Sort using 2 fields
/// ```
/// GET /api/articles?sort[0]=title&sort[1]=slug
/// ```
///
/// #### Sort using 2 fields and set the order
/// ```
/// GET /api/articles?sort[0]=title%3Aasc&sort[1]=slug%3Adesc
/// ```
///
/// ### Pagination
///
/// Queries can accept pagination parameters. Results can be paginated:
/// * either by page (i.e. specifying a page number and the number of entries per page)
/// * or by offset (i.e. specifying how many entries to skip and to return)
///
/// #### Pagination by page
///
/// | Parameter	| Type | Description | Default |
/// | ----------- | ---- | ----------- | ------- |
/// | pagination[page] | Integer | Page number | 1 |
/// | pagination[pageSize] | Integer | Page size | 25 |
/// | pagination[withCount] | Boolean | Adds the total numbers of entries and the number of pages to the response | True |
///
/// ```
/// GET /api/articles?pagination[page]=1&pagination[pageSize]=10
/// ```
///
/// #### Pagination by offset
///
/// | Parameter | Type | Description | Default |
/// | --------- | ---- | ----------- | ------- |
/// | pagination[start] | Integer |	Start value (i.e. first entry to return) | 0 |
/// | pagination[limit] | Integer	| Number of entries to return |	25 |
/// | pagination[withCount] | Boolean | Toggles displaying the total number of entries to the response | true |
///
/// ```
/// GET /api/articles?pagination[start]=0&pagination[limit]=10
/// ```
///
/// {@endtemplate}
class Strapi {
  /// Base URL for [Strapi] client
  late final String _baseUrl;

  /// Optional [Dio] httpClient instance for [Strapi] client
  late final Dio _httpClient;

  /// Optional token for authentication in [Strapi] client
  late final String? _token;

  /// Optional API Path for [Strapi] client, default is `/api`
  late final String _apiPath;

  Dio get http => _httpClient;

  Strapi(
    String baseUrl, {
    String apiPath = 'api/',
    Dio? httpClient,
    String? token,
    BaseOptions? options,
  }) {
    this.baseUrl = baseUrl;

    // Initialize httpClient
    _httpClient = httpClient ?? Dio(options);
    if (options != null) {
      _httpClient.options = options;
    }

    _httpClient.options.baseUrl = this.baseUrl;
    _httpClient.options.headers = {
      for (final entry in _httpClient.options.headers.entries)
        entry.key: entry.value,
      if (token != null) 'Authorization': 'Bearer $token',
    };

    // End httpClient initialization

    // Initialize apiPath
    this.apiPath = apiPath;
    // End apiPath initialization
  }

  /// Base URL for [Strapi] client
  String get baseUrl => _baseUrl;

  /// Base URL for [Strapi] client
  set baseUrl(String value) {
    _baseUrl = value.endsWith('/') ? value : '$value/';
  }

  /// Get Bearer token of [Strapi] client
  String? get token {
    final token = _httpClient.options.headers['Authorization'] as String?;

    if (this._token == null && token != null) {
      this._token = token.replaceFirst('Bearer ', '');
    }

    if (this._token != null && token == null) {
      this.token = this._token;
    }

    return this._token;
  }

  /// Set Bearer token of [Strapi] client
  set token(String? token) {
    this._token = token;
    _httpClient.options.headers = {
      for (final entry in _httpClient.options.headers.entries)
        entry.key: entry.value,
      if (token != null) 'Authorization': 'Bearer $token',
    };
  }

  /// Get API Path of [Strapi] client
  String get apiPath => _apiPath;

  /// Set API Path of [Strapi] client
  set apiPath(String apiPath) {
    this._apiPath =
        apiPath.isEmpty ? '' : (apiPath.endsWith('/') ? apiPath : '$apiPath/');
  }

  /// Get API final Endpoint of [Strapi] client
  /// ie: `https://server.app/api/`
  String get apiEndpoint => '$baseUrl$apiPath';

  Dio get httpClient => _httpClient;
}
