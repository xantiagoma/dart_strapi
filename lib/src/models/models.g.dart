// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SingleData _$$SingleDataFromJson(Map<String, dynamic> json) => _$SingleData(
      json['data'] as Map<String, dynamic>,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SingleDataToJson(_$SingleData instance) =>
    <String, dynamic>{
      'data': instance.data,
      'runtimeType': instance.$type,
    };

_$CollectionData _$$CollectionDataFromJson(Map<String, dynamic> json) =>
    _$CollectionData(
      (json['data'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CollectionDataToJson(_$CollectionData instance) =>
    <String, dynamic>{
      'data': instance.data,
      'runtimeType': instance.$type,
    };

_$ResponseData _$$ResponseDataFromJson(Map<String, dynamic> json) =>
    _$ResponseData(
      data: json['data'] == null ? null : Data.fromJson(json['data']),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ResponseDataToJson(_$ResponseData instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
      'runtimeType': instance.$type,
    };

_$ResponseError _$$ResponseErrorFromJson(Map<String, dynamic> json) =>
    _$ResponseError(
      json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ResponseErrorToJson(_$ResponseError instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$MetaData _$$MetaDataFromJson(Map<String, dynamic> json) => _$MetaData(
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MetaDataToJson(_$MetaData instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
    };

_$PaginationData _$$PaginationDataFromJson(Map<String, dynamic> json) =>
    _$PaginationData(
      page: json['page'] as int?,
      pageSize: json['pageSize'] as int?,
      pageCount: json['pageCount'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$PaginationDataToJson(_$PaginationData instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pageSize': instance.pageSize,
      'pageCount': instance.pageCount,
      'total': instance.total,
    };
