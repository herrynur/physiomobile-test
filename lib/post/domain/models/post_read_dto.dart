// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_read_dto.freezed.dart';
part 'post_read_dto.g.dart';

@freezed
class PostReadDto with  _$PostReadDto{
  const factory PostReadDto({
    @JsonKey(name: 'userId') @Default(0) int userId,
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'body') String? body,
  }) = _PostReadDto;

  factory PostReadDto.fromJson(Map<String, dynamic> json) => _$PostReadDtoFromJson(json);
}