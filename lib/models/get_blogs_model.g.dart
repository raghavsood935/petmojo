// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_blogs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_getBlogs _$$_getBlogsFromJson(Map<String, dynamic> json) => _$_getBlogs(
      blogs: (json['blogs'] as List<dynamic>?)
          ?.map((e) => blogDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_getBlogsToJson(_$_getBlogs instance) =>
    <String, dynamic>{
      'blogs': instance.blogs,
    };

_$_blogDetails _$$_blogDetailsFromJson(Map<String, dynamic> json) =>
    _$_blogDetails(
      sId: json['_id'] as String?,
      images: json['images'] as List<dynamic>?,
      thumbnail: json['thumbnail'] as String?,
      likes: json['likes'] as int?,
      text: json['text'] as String?,
      author: json['author'] as String?,
      title: json['title'] as String?,
      peopleLiked: json['peopleLiked'] as List<dynamic>?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$_blogDetailsToJson(_$_blogDetails instance) =>
    <String, dynamic>{
      '_id': instance.sId,
      'images': instance.images,
      'thumbnail': instance.thumbnail,
      'likes': instance.likes,
      'text': instance.text,
      'author': instance.author,
      'title': instance.title,
      'peopleLiked': instance.peopleLiked,
      'date': instance.date,
    };
