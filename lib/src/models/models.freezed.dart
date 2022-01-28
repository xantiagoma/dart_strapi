// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Data _$DataFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'single':
      return SingleData.fromJson(json);
    case 'collection':
      return CollectionData.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Data',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  SingleData single(Map<String, dynamic> data) {
    return SingleData(
      data,
    );
  }

  CollectionData collection(List<Map<String, dynamic>> data) {
    return CollectionData(
      data,
    );
  }

  Data fromJson(Map<String, Object?> json) {
    return Data.fromJson(json);
  }
}

/// @nodoc
const $Data = _$DataTearOff();

/// @nodoc
mixin _$Data {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> data) single,
    required TResult Function(List<Map<String, dynamic>> data) collection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<String, dynamic> data)? single,
    TResult Function(List<Map<String, dynamic>> data)? collection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> data)? single,
    TResult Function(List<Map<String, dynamic>> data)? collection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingleData value) single,
    required TResult Function(CollectionData value) collection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SingleData value)? single,
    TResult Function(CollectionData value)? collection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingleData value)? single,
    TResult Function(CollectionData value)? collection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;
}

/// @nodoc
abstract class $SingleDataCopyWith<$Res> {
  factory $SingleDataCopyWith(
          SingleData value, $Res Function(SingleData) then) =
      _$SingleDataCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> data});
}

/// @nodoc
class _$SingleDataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res>
    implements $SingleDataCopyWith<$Res> {
  _$SingleDataCopyWithImpl(SingleData _value, $Res Function(SingleData) _then)
      : super(_value, (v) => _then(v as SingleData));

  @override
  SingleData get _value => super._value as SingleData;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(SingleData(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SingleData implements SingleData {
  const _$SingleData(this.data, {String? $type}) : $type = $type ?? 'single';

  factory _$SingleData.fromJson(Map<String, dynamic> json) =>
      _$$SingleDataFromJson(json);

  @override
  final Map<String, dynamic> data;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Data.single(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SingleData &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $SingleDataCopyWith<SingleData> get copyWith =>
      _$SingleDataCopyWithImpl<SingleData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> data) single,
    required TResult Function(List<Map<String, dynamic>> data) collection,
  }) {
    return single(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<String, dynamic> data)? single,
    TResult Function(List<Map<String, dynamic>> data)? collection,
  }) {
    return single?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> data)? single,
    TResult Function(List<Map<String, dynamic>> data)? collection,
    required TResult orElse(),
  }) {
    if (single != null) {
      return single(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingleData value) single,
    required TResult Function(CollectionData value) collection,
  }) {
    return single(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SingleData value)? single,
    TResult Function(CollectionData value)? collection,
  }) {
    return single?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingleData value)? single,
    TResult Function(CollectionData value)? collection,
    required TResult orElse(),
  }) {
    if (single != null) {
      return single(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SingleDataToJson(this);
  }
}

abstract class SingleData implements Data {
  const factory SingleData(Map<String, dynamic> data) = _$SingleData;

  factory SingleData.fromJson(Map<String, dynamic> json) =
      _$SingleData.fromJson;

  Map<String, dynamic> get data;
  @JsonKey(ignore: true)
  $SingleDataCopyWith<SingleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionDataCopyWith<$Res> {
  factory $CollectionDataCopyWith(
          CollectionData value, $Res Function(CollectionData) then) =
      _$CollectionDataCopyWithImpl<$Res>;
  $Res call({List<Map<String, dynamic>> data});
}

/// @nodoc
class _$CollectionDataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res>
    implements $CollectionDataCopyWith<$Res> {
  _$CollectionDataCopyWithImpl(
      CollectionData _value, $Res Function(CollectionData) _then)
      : super(_value, (v) => _then(v as CollectionData));

  @override
  CollectionData get _value => super._value as CollectionData;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(CollectionData(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectionData implements CollectionData {
  const _$CollectionData(this.data, {String? $type})
      : $type = $type ?? 'collection';

  factory _$CollectionData.fromJson(Map<String, dynamic> json) =>
      _$$CollectionDataFromJson(json);

  @override
  final List<Map<String, dynamic>> data;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Data.collection(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CollectionData &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $CollectionDataCopyWith<CollectionData> get copyWith =>
      _$CollectionDataCopyWithImpl<CollectionData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> data) single,
    required TResult Function(List<Map<String, dynamic>> data) collection,
  }) {
    return collection(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<String, dynamic> data)? single,
    TResult Function(List<Map<String, dynamic>> data)? collection,
  }) {
    return collection?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> data)? single,
    TResult Function(List<Map<String, dynamic>> data)? collection,
    required TResult orElse(),
  }) {
    if (collection != null) {
      return collection(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingleData value) single,
    required TResult Function(CollectionData value) collection,
  }) {
    return collection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SingleData value)? single,
    TResult Function(CollectionData value)? collection,
  }) {
    return collection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingleData value)? single,
    TResult Function(CollectionData value)? collection,
    required TResult orElse(),
  }) {
    if (collection != null) {
      return collection(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectionDataToJson(this);
  }
}

abstract class CollectionData implements Data {
  const factory CollectionData(List<Map<String, dynamic>> data) =
      _$CollectionData;

  factory CollectionData.fromJson(Map<String, dynamic> json) =
      _$CollectionData.fromJson;

  List<Map<String, dynamic>> get data;
  @JsonKey(ignore: true)
  $CollectionDataCopyWith<CollectionData> get copyWith =>
      throw _privateConstructorUsedError;
}

Response _$ResponseFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return ResponseData.fromJson(json);
    case 'error':
      return ResponseError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Response',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ResponseTearOff {
  const _$ResponseTearOff();

  ResponseData call({@DataConverter() Data? data, Meta? meta}) {
    return ResponseData(
      data: data,
      meta: meta,
    );
  }

  ResponseError error(String message) {
    return ResponseError(
      message,
    );
  }

  Response fromJson(Map<String, Object?> json) {
    return Response.fromJson(json);
  }
}

/// @nodoc
const $Response = _$ResponseTearOff();

/// @nodoc
mixin _$Response {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@DataConverter() Data? data, Meta? meta) $default, {
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(@DataConverter() Data? data, Meta? meta)? $default, {
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@DataConverter() Data? data, Meta? meta)? $default, {
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ResponseData value) $default, {
    required TResult Function(ResponseError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ResponseData value)? $default, {
    TResult Function(ResponseError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ResponseData value)? $default, {
    TResult Function(ResponseError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCopyWith<$Res> {
  factory $ResponseCopyWith(Response value, $Res Function(Response) then) =
      _$ResponseCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResponseCopyWithImpl<$Res> implements $ResponseCopyWith<$Res> {
  _$ResponseCopyWithImpl(this._value, this._then);

  final Response _value;
  // ignore: unused_field
  final $Res Function(Response) _then;
}

/// @nodoc
abstract class $ResponseDataCopyWith<$Res> {
  factory $ResponseDataCopyWith(
          ResponseData value, $Res Function(ResponseData) then) =
      _$ResponseDataCopyWithImpl<$Res>;
  $Res call({@DataConverter() Data? data, Meta? meta});

  $DataCopyWith<$Res>? get data;
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$ResponseDataCopyWithImpl<$Res> extends _$ResponseCopyWithImpl<$Res>
    implements $ResponseDataCopyWith<$Res> {
  _$ResponseDataCopyWithImpl(
      ResponseData _value, $Res Function(ResponseData) _then)
      : super(_value, (v) => _then(v as ResponseData));

  @override
  ResponseData get _value => super._value as ResponseData;

  @override
  $Res call({
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(ResponseData(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }

  @override
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }

  @override
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseData implements ResponseData {
  const _$ResponseData({@DataConverter() this.data, this.meta, String? $type})
      : $type = $type ?? 'default';

  factory _$ResponseData.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDataFromJson(json);

  @override
  @DataConverter()
  final Data? data;
  @override
  final Meta? meta;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Response(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseData &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.meta, meta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(meta));

  @JsonKey(ignore: true)
  @override
  $ResponseDataCopyWith<ResponseData> get copyWith =>
      _$ResponseDataCopyWithImpl<ResponseData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@DataConverter() Data? data, Meta? meta) $default, {
    required TResult Function(String message) error,
  }) {
    return $default(data, meta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(@DataConverter() Data? data, Meta? meta)? $default, {
    TResult Function(String message)? error,
  }) {
    return $default?.call(data, meta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@DataConverter() Data? data, Meta? meta)? $default, {
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(data, meta);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ResponseData value) $default, {
    required TResult Function(ResponseError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ResponseData value)? $default, {
    TResult Function(ResponseError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ResponseData value)? $default, {
    TResult Function(ResponseError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDataToJson(this);
  }
}

abstract class ResponseData implements Response {
  const factory ResponseData({@DataConverter() Data? data, Meta? meta}) =
      _$ResponseData;

  factory ResponseData.fromJson(Map<String, dynamic> json) =
      _$ResponseData.fromJson;

  @DataConverter()
  Data? get data;
  Meta? get meta;
  @JsonKey(ignore: true)
  $ResponseDataCopyWith<ResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseErrorCopyWith<$Res> {
  factory $ResponseErrorCopyWith(
          ResponseError value, $Res Function(ResponseError) then) =
      _$ResponseErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ResponseErrorCopyWithImpl<$Res> extends _$ResponseCopyWithImpl<$Res>
    implements $ResponseErrorCopyWith<$Res> {
  _$ResponseErrorCopyWithImpl(
      ResponseError _value, $Res Function(ResponseError) _then)
      : super(_value, (v) => _then(v as ResponseError));

  @override
  ResponseError get _value => super._value as ResponseError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ResponseError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseError implements ResponseError {
  const _$ResponseError(this.message, {String? $type})
      : $type = $type ?? 'error';

  factory _$ResponseError.fromJson(Map<String, dynamic> json) =>
      _$$ResponseErrorFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Response.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ResponseErrorCopyWith<ResponseError> get copyWith =>
      _$ResponseErrorCopyWithImpl<ResponseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@DataConverter() Data? data, Meta? meta) $default, {
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(@DataConverter() Data? data, Meta? meta)? $default, {
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@DataConverter() Data? data, Meta? meta)? $default, {
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ResponseData value) $default, {
    required TResult Function(ResponseError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ResponseData value)? $default, {
    TResult Function(ResponseError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ResponseData value)? $default, {
    TResult Function(ResponseError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseErrorToJson(this);
  }
}

abstract class ResponseError implements Response {
  const factory ResponseError(String message) = _$ResponseError;

  factory ResponseError.fromJson(Map<String, dynamic> json) =
      _$ResponseError.fromJson;

  String get message;
  @JsonKey(ignore: true)
  $ResponseErrorCopyWith<ResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return MetaData.fromJson(json);
}

/// @nodoc
class _$MetaTearOff {
  const _$MetaTearOff();

  MetaData call({Pagination? pagination}) {
    return MetaData(
      pagination: pagination,
    );
  }

  Meta fromJson(Map<String, Object?> json) {
    return Meta.fromJson(json);
  }
}

/// @nodoc
const $Meta = _$MetaTearOff();

/// @nodoc
mixin _$Meta {
  Pagination? get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res>;
  $Res call({Pagination? pagination});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$MetaCopyWithImpl<$Res> implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  final Meta _value;
  // ignore: unused_field
  final $Res Function(Meta) _then;

  @override
  $Res call({
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      pagination: pagination == freezed
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }

  @override
  $PaginationCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value));
    });
  }
}

/// @nodoc
abstract class $MetaDataCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory $MetaDataCopyWith(MetaData value, $Res Function(MetaData) then) =
      _$MetaDataCopyWithImpl<$Res>;
  @override
  $Res call({Pagination? pagination});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$MetaDataCopyWithImpl<$Res> extends _$MetaCopyWithImpl<$Res>
    implements $MetaDataCopyWith<$Res> {
  _$MetaDataCopyWithImpl(MetaData _value, $Res Function(MetaData) _then)
      : super(_value, (v) => _then(v as MetaData));

  @override
  MetaData get _value => super._value as MetaData;

  @override
  $Res call({
    Object? pagination = freezed,
  }) {
    return _then(MetaData(
      pagination: pagination == freezed
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaData implements MetaData {
  const _$MetaData({this.pagination});

  factory _$MetaData.fromJson(Map<String, dynamic> json) =>
      _$$MetaDataFromJson(json);

  @override
  final Pagination? pagination;

  @override
  String toString() {
    return 'Meta(pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MetaData &&
            const DeepCollectionEquality()
                .equals(other.pagination, pagination));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pagination));

  @JsonKey(ignore: true)
  @override
  $MetaDataCopyWith<MetaData> get copyWith =>
      _$MetaDataCopyWithImpl<MetaData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaDataToJson(this);
  }
}

abstract class MetaData implements Meta {
  const factory MetaData({Pagination? pagination}) = _$MetaData;

  factory MetaData.fromJson(Map<String, dynamic> json) = _$MetaData.fromJson;

  @override
  Pagination? get pagination;
  @override
  @JsonKey(ignore: true)
  $MetaDataCopyWith<MetaData> get copyWith =>
      throw _privateConstructorUsedError;
}

Pagination _$PaginationFromJson(Map<String, dynamic> json) {
  return PaginationData.fromJson(json);
}

/// @nodoc
class _$PaginationTearOff {
  const _$PaginationTearOff();

  PaginationData call({int? page, int? pageSize, int? pageCount, int? total}) {
    return PaginationData(
      page: page,
      pageSize: pageSize,
      pageCount: pageCount,
      total: total,
    );
  }

  Pagination fromJson(Map<String, Object?> json) {
    return Pagination.fromJson(json);
  }
}

/// @nodoc
const $Pagination = _$PaginationTearOff();

/// @nodoc
mixin _$Pagination {
  int? get page => throw _privateConstructorUsedError;
  int? get pageSize => throw _privateConstructorUsedError;
  int? get pageCount => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationCopyWith<Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(
          Pagination value, $Res Function(Pagination) then) =
      _$PaginationCopyWithImpl<$Res>;
  $Res call({int? page, int? pageSize, int? pageCount, int? total});
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res> implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  final Pagination _value;
  // ignore: unused_field
  final $Res Function(Pagination) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? pageCount = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      pageCount: pageCount == freezed
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class $PaginationDataCopyWith<$Res>
    implements $PaginationCopyWith<$Res> {
  factory $PaginationDataCopyWith(
          PaginationData value, $Res Function(PaginationData) then) =
      _$PaginationDataCopyWithImpl<$Res>;
  @override
  $Res call({int? page, int? pageSize, int? pageCount, int? total});
}

/// @nodoc
class _$PaginationDataCopyWithImpl<$Res> extends _$PaginationCopyWithImpl<$Res>
    implements $PaginationDataCopyWith<$Res> {
  _$PaginationDataCopyWithImpl(
      PaginationData _value, $Res Function(PaginationData) _then)
      : super(_value, (v) => _then(v as PaginationData));

  @override
  PaginationData get _value => super._value as PaginationData;

  @override
  $Res call({
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? pageCount = freezed,
    Object? total = freezed,
  }) {
    return _then(PaginationData(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      pageCount: pageCount == freezed
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationData implements PaginationData {
  const _$PaginationData(
      {this.page, this.pageSize, this.pageCount, this.total});

  factory _$PaginationData.fromJson(Map<String, dynamic> json) =>
      _$$PaginationDataFromJson(json);

  @override
  final int? page;
  @override
  final int? pageSize;
  @override
  final int? pageCount;
  @override
  final int? total;

  @override
  String toString() {
    return 'Pagination(page: $page, pageSize: $pageSize, pageCount: $pageCount, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaginationData &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.pageSize, pageSize) &&
            const DeepCollectionEquality().equals(other.pageCount, pageCount) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(pageSize),
      const DeepCollectionEquality().hash(pageCount),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  $PaginationDataCopyWith<PaginationData> get copyWith =>
      _$PaginationDataCopyWithImpl<PaginationData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationDataToJson(this);
  }
}

abstract class PaginationData implements Pagination {
  const factory PaginationData(
      {int? page,
      int? pageSize,
      int? pageCount,
      int? total}) = _$PaginationData;

  factory PaginationData.fromJson(Map<String, dynamic> json) =
      _$PaginationData.fromJson;

  @override
  int? get page;
  @override
  int? get pageSize;
  @override
  int? get pageCount;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  $PaginationDataCopyWith<PaginationData> get copyWith =>
      throw _privateConstructorUsedError;
}
