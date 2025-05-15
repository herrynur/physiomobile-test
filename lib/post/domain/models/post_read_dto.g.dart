// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_read_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostReadDtoImpl _$$PostReadDtoImplFromJson(Map<String, dynamic> json) =>
    _$PostReadDtoImpl(
      userId: (json['userId'] as num?)?.toInt() ?? 0,
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$$PostReadDtoImplToJson(_$PostReadDtoImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };
