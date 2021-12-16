// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_bookmarks_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_getBookmarks _$$_getBookmarksFromJson(Map<String, dynamic> json) =>
    _$_getBookmarks(
      listOfBookmarks: (json['bookmarks'] as List<dynamic>?)
          ?.map(
              (e) => BookmarkDetailResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_getBookmarksToJson(_$_getBookmarks instance) =>
    <String, dynamic>{
      'bookmarks': instance.listOfBookmarks,
    };

_$_BookmarkDetailResponse _$$_BookmarkDetailResponseFromJson(
        Map<String, dynamic> json) =>
    _$_BookmarkDetailResponse(
      sId: json['_id'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$_BookmarkDetailResponseToJson(
        _$_BookmarkDetailResponse instance) =>
    <String, dynamic>{
      '_id': instance.sId,
      'thumbnail': instance.thumbnail,
    };
