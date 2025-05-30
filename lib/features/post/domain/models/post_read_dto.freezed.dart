// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_read_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PostReadDto _$PostReadDtoFromJson(Map<String, dynamic> json) {
  return _PostReadDto.fromJson(json);
}

/// @nodoc
mixin _$PostReadDto {
  @JsonKey(name: 'userId')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String? get body => throw _privateConstructorUsedError;

  /// Serializes this PostReadDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostReadDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostReadDtoCopyWith<PostReadDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostReadDtoCopyWith<$Res> {
  factory $PostReadDtoCopyWith(
    PostReadDto value,
    $Res Function(PostReadDto) then,
  ) = _$PostReadDtoCopyWithImpl<$Res, PostReadDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'userId') int userId,
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'body') String? body,
  });
}

/// @nodoc
class _$PostReadDtoCopyWithImpl<$Res, $Val extends PostReadDto>
    implements $PostReadDtoCopyWith<$Res> {
  _$PostReadDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostReadDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as int,
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            title:
                freezed == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String?,
            body:
                freezed == body
                    ? _value.body
                    : body // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PostReadDtoImplCopyWith<$Res>
    implements $PostReadDtoCopyWith<$Res> {
  factory _$$PostReadDtoImplCopyWith(
    _$PostReadDtoImpl value,
    $Res Function(_$PostReadDtoImpl) then,
  ) = __$$PostReadDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'userId') int userId,
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'body') String? body,
  });
}

/// @nodoc
class __$$PostReadDtoImplCopyWithImpl<$Res>
    extends _$PostReadDtoCopyWithImpl<$Res, _$PostReadDtoImpl>
    implements _$$PostReadDtoImplCopyWith<$Res> {
  __$$PostReadDtoImplCopyWithImpl(
    _$PostReadDtoImpl _value,
    $Res Function(_$PostReadDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostReadDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(
      _$PostReadDtoImpl(
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as int,
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        title:
            freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String?,
        body:
            freezed == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PostReadDtoImpl implements _PostReadDto {
  const _$PostReadDtoImpl({
    @JsonKey(name: 'userId') this.userId = 0,
    @JsonKey(name: 'id') this.id = 0,
    @JsonKey(name: 'title') this.title,
    @JsonKey(name: 'body') this.body,
  });

  factory _$PostReadDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostReadDtoImplFromJson(json);

  @override
  @JsonKey(name: 'userId')
  final int userId;
  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'body')
  final String? body;

  @override
  String toString() {
    return 'PostReadDto(userId: $userId, id: $id, title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostReadDtoImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, id, title, body);

  /// Create a copy of PostReadDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostReadDtoImplCopyWith<_$PostReadDtoImpl> get copyWith =>
      __$$PostReadDtoImplCopyWithImpl<_$PostReadDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostReadDtoImplToJson(this);
  }
}

abstract class _PostReadDto implements PostReadDto {
  const factory _PostReadDto({
    @JsonKey(name: 'userId') final int userId,
    @JsonKey(name: 'id') final int id,
    @JsonKey(name: 'title') final String? title,
    @JsonKey(name: 'body') final String? body,
  }) = _$PostReadDtoImpl;

  factory _PostReadDto.fromJson(Map<String, dynamic> json) =
      _$PostReadDtoImpl.fromJson;

  @override
  @JsonKey(name: 'userId')
  int get userId;
  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'body')
  String? get body;

  /// Create a copy of PostReadDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostReadDtoImplCopyWith<_$PostReadDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
