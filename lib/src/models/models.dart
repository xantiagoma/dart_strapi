import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class Response<T> with _$Response<T> {
  factory Response.ok(T data) = OkResponse;
  factory Response.error(String message) = ErrorResponse;
}

@freezed
class Entry with _$Entry {
  factory Entry({
    required String collectionName,
    required Identifier id,
    Object? data,
  }) = _Entry;

  factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);
}

@freezed
class Identifier with _$Identifier {
  factory Identifier.integer(int id) = IntIdentifier;
  factory Identifier.string(String id) = StringIdentifier;

  factory Identifier.fromJson(Map<String, dynamic> json) =>
      _$IdentifierFromJson(json);
}

T? _getFrom<T>(Object? data, String key) {
  if (data == null) {
    return null;
  }

  if (data is Map && data[key] != null) {
    return data[key];
  }

  return null;
}

extension EntryExtension on Entry {
  String get identifier => id.when(
        integer: (data) => data.toString(),
        string: (data) => data,
      );
  DateTime? get created_at => DateTime.tryParse(_getFrom(data, 'created_at'));
  DateTime? get updated_at => DateTime.tryParse(_getFrom(data, 'updated_at'));
}
