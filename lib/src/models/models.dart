import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class Data with _$Data {
  const factory Data.single(Map<String, dynamic> data) = SingleData;
  const factory Data.collection(List<Map<String, dynamic>> data) =
      CollectionData;

  factory Data.fromJson(dynamic json) => json is List
      ? _$DataFromJson({
          'runtimeType': 'collection',
          'data': json,
        })
      : _$DataFromJson({'runtimeType': 'single', 'data': json});
}

class DataConverter implements JsonConverter<Data, dynamic> {
  const DataConverter();

  @override
  Data fromJson(dynamic json) {
    // if (json['runtimeType'] != null) {
    //   return Response.fromJson(json);
    // }

    // you need to find some condition to know which type it is. e.g. check the presence of some field in the json
    if (json is List) {
      return CollectionData.fromJson({'data': json});
    } else if (json is Map<String, dynamic>) {
      return SingleData.fromJson(json);
    } else {
      throw Exception(
          'Could not determine the constructor for mapping from JSON');
    }
  }

  @override
  Map<String, dynamic> toJson(Data data) => data.toJson();
}

@freezed
class Response with _$Response {
  const factory Response({
    @DataConverter() @required Data? data,
    @required Meta? meta,
  }) = ResponseData;
  const factory Response.error(String message) = ResponseError;

  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    @required Pagination? pagination,
  }) = MetaData;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class Pagination with _$Pagination {
  const factory Pagination({
    @required int? page,
    @required int? pageSize,
    @required int? pageCount,
    @required int? total,
  }) = PaginationData;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}
