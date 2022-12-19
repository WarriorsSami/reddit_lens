// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentEntity _$CommentEntityFromJson(Map<String, dynamic> json) {
  return _CommentEntity.fromJson(json);
}

/// @nodoc
mixin _$CommentEntity {
  String? get author => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'link_id')
  String? get linkId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentEntityCopyWith<CommentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentEntityCopyWith<$Res> {
  factory $CommentEntityCopyWith(
          CommentEntity value, $Res Function(CommentEntity) then) =
      _$CommentEntityCopyWithImpl<$Res, CommentEntity>;
  @useResult
  $Res call(
      {String? author, String? body, @JsonKey(name: 'link_id') String? linkId});
}

/// @nodoc
class _$CommentEntityCopyWithImpl<$Res, $Val extends CommentEntity>
    implements $CommentEntityCopyWith<$Res> {
  _$CommentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = freezed,
    Object? body = freezed,
    Object? linkId = freezed,
  }) {
    return _then(_value.copyWith(
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      linkId: freezed == linkId
          ? _value.linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentEntityCopyWith<$Res>
    implements $CommentEntityCopyWith<$Res> {
  factory _$$_CommentEntityCopyWith(
          _$_CommentEntity value, $Res Function(_$_CommentEntity) then) =
      __$$_CommentEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? author, String? body, @JsonKey(name: 'link_id') String? linkId});
}

/// @nodoc
class __$$_CommentEntityCopyWithImpl<$Res>
    extends _$CommentEntityCopyWithImpl<$Res, _$_CommentEntity>
    implements _$$_CommentEntityCopyWith<$Res> {
  __$$_CommentEntityCopyWithImpl(
      _$_CommentEntity _value, $Res Function(_$_CommentEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = freezed,
    Object? body = freezed,
    Object? linkId = freezed,
  }) {
    return _then(_$_CommentEntity(
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      linkId: freezed == linkId
          ? _value.linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentEntity implements _CommentEntity {
  _$_CommentEntity(
      {this.author, this.body, @JsonKey(name: 'link_id') this.linkId});

  factory _$_CommentEntity.fromJson(Map<String, dynamic> json) =>
      _$$_CommentEntityFromJson(json);

  @override
  final String? author;
  @override
  final String? body;
  @override
  @JsonKey(name: 'link_id')
  final String? linkId;

  @override
  String toString() {
    return 'CommentEntity(author: $author, body: $body, linkId: $linkId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentEntity &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.linkId, linkId) || other.linkId == linkId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, author, body, linkId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentEntityCopyWith<_$_CommentEntity> get copyWith =>
      __$$_CommentEntityCopyWithImpl<_$_CommentEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentEntityToJson(
      this,
    );
  }
}

abstract class _CommentEntity implements CommentEntity {
  factory _CommentEntity(
      {final String? author,
      final String? body,
      @JsonKey(name: 'link_id') final String? linkId}) = _$_CommentEntity;

  factory _CommentEntity.fromJson(Map<String, dynamic> json) =
      _$_CommentEntity.fromJson;

  @override
  String? get author;
  @override
  String? get body;
  @override
  @JsonKey(name: 'link_id')
  String? get linkId;
  @override
  @JsonKey(ignore: true)
  _$$_CommentEntityCopyWith<_$_CommentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
