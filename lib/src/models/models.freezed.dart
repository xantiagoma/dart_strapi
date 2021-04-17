// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResponseTearOff {
  const _$ResponseTearOff();

  OkResponse<T> ok<T>(T data) {
    return OkResponse<T>(
      data,
    );
  }

  ErrorResponse<T> error<T>(String message) {
    return ErrorResponse<T>(
      message,
    );
  }
}

/// @nodoc
const $Response = _$ResponseTearOff();

/// @nodoc
mixin _$Response<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OkResponse<T> value) ok,
    required TResult Function(ErrorResponse<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OkResponse<T> value)? ok,
    TResult Function(ErrorResponse<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCopyWith<T, $Res> {
  factory $ResponseCopyWith(
          Response<T> value, $Res Function(Response<T>) then) =
      _$ResponseCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ResponseCopyWithImpl<T, $Res> implements $ResponseCopyWith<T, $Res> {
  _$ResponseCopyWithImpl(this._value, this._then);

  final Response<T> _value;
  // ignore: unused_field
  final $Res Function(Response<T>) _then;
}

/// @nodoc
abstract class $OkResponseCopyWith<T, $Res> {
  factory $OkResponseCopyWith(
          OkResponse<T> value, $Res Function(OkResponse<T>) then) =
      _$OkResponseCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class _$OkResponseCopyWithImpl<T, $Res> extends _$ResponseCopyWithImpl<T, $Res>
    implements $OkResponseCopyWith<T, $Res> {
  _$OkResponseCopyWithImpl(
      OkResponse<T> _value, $Res Function(OkResponse<T>) _then)
      : super(_value, (v) => _then(v as OkResponse<T>));

  @override
  OkResponse<T> get _value => super._value as OkResponse<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(OkResponse<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
class _$OkResponse<T> implements OkResponse<T> {
  _$OkResponse(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'Response<$T>.ok(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OkResponse<T> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $OkResponseCopyWith<T, OkResponse<T>> get copyWith =>
      _$OkResponseCopyWithImpl<T, OkResponse<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function(String message) error,
  }) {
    return ok(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OkResponse<T> value) ok,
    required TResult Function(ErrorResponse<T> value) error,
  }) {
    return ok(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OkResponse<T> value)? ok,
    TResult Function(ErrorResponse<T> value)? error,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(this);
    }
    return orElse();
  }
}

abstract class OkResponse<T> implements Response<T> {
  factory OkResponse(T data) = _$OkResponse<T>;

  T get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OkResponseCopyWith<T, OkResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorResponseCopyWith<T, $Res> {
  factory $ErrorResponseCopyWith(
          ErrorResponse<T> value, $Res Function(ErrorResponse<T>) then) =
      _$ErrorResponseCopyWithImpl<T, $Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorResponseCopyWithImpl<T, $Res>
    extends _$ResponseCopyWithImpl<T, $Res>
    implements $ErrorResponseCopyWith<T, $Res> {
  _$ErrorResponseCopyWithImpl(
      ErrorResponse<T> _value, $Res Function(ErrorResponse<T>) _then)
      : super(_value, (v) => _then(v as ErrorResponse<T>));

  @override
  ErrorResponse<T> get _value => super._value as ErrorResponse<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorResponse<T>(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$ErrorResponse<T> implements ErrorResponse<T> {
  _$ErrorResponse(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Response<$T>.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorResponse<T> &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorResponseCopyWith<T, ErrorResponse<T>> get copyWith =>
      _$ErrorResponseCopyWithImpl<T, ErrorResponse<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? ok,
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
  TResult map<TResult extends Object?>({
    required TResult Function(OkResponse<T> value) ok,
    required TResult Function(ErrorResponse<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OkResponse<T> value)? ok,
    TResult Function(ErrorResponse<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorResponse<T> implements Response<T> {
  factory ErrorResponse(String message) = _$ErrorResponse<T>;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorResponseCopyWith<T, ErrorResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

Entry _$EntryFromJson(Map<String, dynamic> json) {
  return _Entry.fromJson(json);
}

/// @nodoc
class _$EntryTearOff {
  const _$EntryTearOff();

  _Entry call(
      {required String collectionName, required Identifier id, Object? data}) {
    return _Entry(
      collectionName: collectionName,
      id: id,
      data: data,
    );
  }

  Entry fromJson(Map<String, Object> json) {
    return Entry.fromJson(json);
  }
}

/// @nodoc
const $Entry = _$EntryTearOff();

/// @nodoc
mixin _$Entry {
  String get collectionName => throw _privateConstructorUsedError;
  Identifier get id => throw _privateConstructorUsedError;
  Object? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntryCopyWith<Entry> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryCopyWith<$Res> {
  factory $EntryCopyWith(Entry value, $Res Function(Entry) then) =
      _$EntryCopyWithImpl<$Res>;
  $Res call({String collectionName, Identifier id, Object? data});

  $IdentifierCopyWith<$Res> get id;
}

/// @nodoc
class _$EntryCopyWithImpl<$Res> implements $EntryCopyWith<$Res> {
  _$EntryCopyWithImpl(this._value, this._then);

  final Entry _value;
  // ignore: unused_field
  final $Res Function(Entry) _then;

  @override
  $Res call({
    Object? collectionName = freezed,
    Object? id = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      collectionName: collectionName == freezed
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
      data: data == freezed ? _value.data : data,
    ));
  }

  @override
  $IdentifierCopyWith<$Res> get id {
    return $IdentifierCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }
}

/// @nodoc
abstract class _$EntryCopyWith<$Res> implements $EntryCopyWith<$Res> {
  factory _$EntryCopyWith(_Entry value, $Res Function(_Entry) then) =
      __$EntryCopyWithImpl<$Res>;
  @override
  $Res call({String collectionName, Identifier id, Object? data});

  @override
  $IdentifierCopyWith<$Res> get id;
}

/// @nodoc
class __$EntryCopyWithImpl<$Res> extends _$EntryCopyWithImpl<$Res>
    implements _$EntryCopyWith<$Res> {
  __$EntryCopyWithImpl(_Entry _value, $Res Function(_Entry) _then)
      : super(_value, (v) => _then(v as _Entry));

  @override
  _Entry get _value => super._value as _Entry;

  @override
  $Res call({
    Object? collectionName = freezed,
    Object? id = freezed,
    Object? data = freezed,
  }) {
    return _then(_Entry(
      collectionName: collectionName == freezed
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
      data: data == freezed ? _value.data : data,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Entry implements _Entry {
  _$_Entry({required this.collectionName, required this.id, this.data});

  factory _$_Entry.fromJson(Map<String, dynamic> json) =>
      _$_$_EntryFromJson(json);

  @override
  final String collectionName;
  @override
  final Identifier id;
  @override
  final Object? data;

  @override
  String toString() {
    return 'Entry(collectionName: $collectionName, id: $id, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Entry &&
            (identical(other.collectionName, collectionName) ||
                const DeepCollectionEquality()
                    .equals(other.collectionName, collectionName)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(collectionName) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$EntryCopyWith<_Entry> get copyWith =>
      __$EntryCopyWithImpl<_Entry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EntryToJson(this);
  }
}

abstract class _Entry implements Entry {
  factory _Entry(
      {required String collectionName,
      required Identifier id,
      Object? data}) = _$_Entry;

  factory _Entry.fromJson(Map<String, dynamic> json) = _$_Entry.fromJson;

  @override
  String get collectionName => throw _privateConstructorUsedError;
  @override
  Identifier get id => throw _privateConstructorUsedError;
  @override
  Object? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EntryCopyWith<_Entry> get copyWith => throw _privateConstructorUsedError;
}

Identifier _$IdentifierFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'integer':
      return IntIdentifier.fromJson(json);
    case 'string':
      return StringIdentifier.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$IdentifierTearOff {
  const _$IdentifierTearOff();

  IntIdentifier integer(int id) {
    return IntIdentifier(
      id,
    );
  }

  StringIdentifier string(String id) {
    return StringIdentifier(
      id,
    );
  }

  Identifier fromJson(Map<String, Object> json) {
    return Identifier.fromJson(json);
  }
}

/// @nodoc
const $Identifier = _$IdentifierTearOff();

/// @nodoc
mixin _$Identifier {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) integer,
    required TResult Function(String id) string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? integer,
    TResult Function(String id)? string,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IntIdentifier value) integer,
    required TResult Function(StringIdentifier value) string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IntIdentifier value)? integer,
    TResult Function(StringIdentifier value)? string,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentifierCopyWith<$Res> {
  factory $IdentifierCopyWith(
          Identifier value, $Res Function(Identifier) then) =
      _$IdentifierCopyWithImpl<$Res>;
}

/// @nodoc
class _$IdentifierCopyWithImpl<$Res> implements $IdentifierCopyWith<$Res> {
  _$IdentifierCopyWithImpl(this._value, this._then);

  final Identifier _value;
  // ignore: unused_field
  final $Res Function(Identifier) _then;
}

/// @nodoc
abstract class $IntIdentifierCopyWith<$Res> {
  factory $IntIdentifierCopyWith(
          IntIdentifier value, $Res Function(IntIdentifier) then) =
      _$IntIdentifierCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$IntIdentifierCopyWithImpl<$Res> extends _$IdentifierCopyWithImpl<$Res>
    implements $IntIdentifierCopyWith<$Res> {
  _$IntIdentifierCopyWithImpl(
      IntIdentifier _value, $Res Function(IntIdentifier) _then)
      : super(_value, (v) => _then(v as IntIdentifier));

  @override
  IntIdentifier get _value => super._value as IntIdentifier;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(IntIdentifier(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$IntIdentifier implements IntIdentifier {
  _$IntIdentifier(this.id);

  factory _$IntIdentifier.fromJson(Map<String, dynamic> json) =>
      _$_$IntIdentifierFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'Identifier.integer(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IntIdentifier &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $IntIdentifierCopyWith<IntIdentifier> get copyWith =>
      _$IntIdentifierCopyWithImpl<IntIdentifier>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) integer,
    required TResult Function(String id) string,
  }) {
    return integer(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? integer,
    TResult Function(String id)? string,
    required TResult orElse(),
  }) {
    if (integer != null) {
      return integer(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IntIdentifier value) integer,
    required TResult Function(StringIdentifier value) string,
  }) {
    return integer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IntIdentifier value)? integer,
    TResult Function(StringIdentifier value)? string,
    required TResult orElse(),
  }) {
    if (integer != null) {
      return integer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$IntIdentifierToJson(this)..['runtimeType'] = 'integer';
  }
}

abstract class IntIdentifier implements Identifier {
  factory IntIdentifier(int id) = _$IntIdentifier;

  factory IntIdentifier.fromJson(Map<String, dynamic> json) =
      _$IntIdentifier.fromJson;

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntIdentifierCopyWith<IntIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringIdentifierCopyWith<$Res> {
  factory $StringIdentifierCopyWith(
          StringIdentifier value, $Res Function(StringIdentifier) then) =
      _$StringIdentifierCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$StringIdentifierCopyWithImpl<$Res>
    extends _$IdentifierCopyWithImpl<$Res>
    implements $StringIdentifierCopyWith<$Res> {
  _$StringIdentifierCopyWithImpl(
      StringIdentifier _value, $Res Function(StringIdentifier) _then)
      : super(_value, (v) => _then(v as StringIdentifier));

  @override
  StringIdentifier get _value => super._value as StringIdentifier;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(StringIdentifier(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$StringIdentifier implements StringIdentifier {
  _$StringIdentifier(this.id);

  factory _$StringIdentifier.fromJson(Map<String, dynamic> json) =>
      _$_$StringIdentifierFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'Identifier.string(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StringIdentifier &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $StringIdentifierCopyWith<StringIdentifier> get copyWith =>
      _$StringIdentifierCopyWithImpl<StringIdentifier>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) integer,
    required TResult Function(String id) string,
  }) {
    return string(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? integer,
    TResult Function(String id)? string,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IntIdentifier value) integer,
    required TResult Function(StringIdentifier value) string,
  }) {
    return string(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IntIdentifier value)? integer,
    TResult Function(StringIdentifier value)? string,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$StringIdentifierToJson(this)..['runtimeType'] = 'string';
  }
}

abstract class StringIdentifier implements Identifier {
  factory StringIdentifier(String id) = _$StringIdentifier;

  factory StringIdentifier.fromJson(Map<String, dynamic> json) =
      _$StringIdentifier.fromJson;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StringIdentifierCopyWith<StringIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}
