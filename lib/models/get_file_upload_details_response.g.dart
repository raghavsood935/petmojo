// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_file_upload_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetFileUploadDetailsResponse _$$_GetFileUploadDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetFileUploadDetailsResponse(
      success: json['success'] as bool?,
      fileUrls: json['videoUrls'] == null
          ? null
          : GetFileUrlsResponse.fromJson(
              json['videoUrls'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetFileUploadDetailsResponseToJson(
        _$_GetFileUploadDetailsResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'videoUrls': instance.fileUrls,
    };

_$_GetFileUrlsResponse _$$_GetFileUrlsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetFileUrlsResponse(
      url: json['url'] as String?,
      fields: json['fields'] == null
          ? null
          : GetFileUploadDetailsFieldsResponse.fromJson(
              json['fields'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetFileUrlsResponseToJson(
        _$_GetFileUrlsResponse instance) =>
    <String, dynamic>{
      'url': instance.url,
      'fields': instance.fields,
    };

_$_GetFileUploadDetailsFieldsResponse
    _$$_GetFileUploadDetailsFieldsResponseFromJson(Map<String, dynamic> json) =>
        _$_GetFileUploadDetailsFieldsResponse(
          key: json['key'] as String?,
          bucket: json['bucket'] as String?,
          xAmzAlgorithm: json['X-Amz-Algorithm'] as String?,
          xAmzCredential: json['X-Amz-Credential'] as String?,
          xAmzDate: json['X-Amz-Date'] as String?,
          policy: json['Policy'] as String?,
          xAmzSignature: json['X-Amz-Signature'] as String?,
        );

Map<String, dynamic> _$$_GetFileUploadDetailsFieldsResponseToJson(
        _$_GetFileUploadDetailsFieldsResponse instance) =>
    <String, dynamic>{
      'key': instance.key,
      'bucket': instance.bucket,
      'X-Amz-Algorithm': instance.xAmzAlgorithm,
      'X-Amz-Credential': instance.xAmzCredential,
      'X-Amz-Date': instance.xAmzDate,
      'Policy': instance.policy,
      'X-Amz-Signature': instance.xAmzSignature,
    };
