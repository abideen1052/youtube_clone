// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Home _$$_HomeFromJson(Map<String, dynamic> json) => _$_Home(
      title: json['title'] as String?,
      date: json['publishedAt'] as String?,
      channelName: json['channelTitle'] as String?,
      duration: json['duration'] as String?,
      views: json['viewCount'] as String?,
      thumbnail: json['thumbnails'] as String?,
    );

Map<String, dynamic> _$$_HomeToJson(_$_Home instance) => <String, dynamic>{
      'title': instance.title,
      'publishedAt': instance.date,
      'channelTitle': instance.channelName,
      'duration': instance.duration,
      'viewCount': instance.views,
      'thumbnails': instance.thumbnail,
    };
