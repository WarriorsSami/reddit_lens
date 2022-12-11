// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subreddit_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubredditEntity {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Uint8List? get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubredditEntityCopyWith<SubredditEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubredditEntityCopyWith<$Res> {
  factory $SubredditEntityCopyWith(
          SubredditEntity value, $Res Function(SubredditEntity) then) =
      _$SubredditEntityCopyWithImpl<$Res, SubredditEntity>;
  @useResult
  $Res call({int? id, String name, Uint8List? image});
}

/// @nodoc
class _$SubredditEntityCopyWithImpl<$Res, $Val extends SubredditEntity>
    implements $SubredditEntityCopyWith<$Res> {
  _$SubredditEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubredditEntityCopyWith<$Res>
    implements $SubredditEntityCopyWith<$Res> {
  factory _$$_SubredditEntityCopyWith(
          _$_SubredditEntity value, $Res Function(_$_SubredditEntity) then) =
      __$$_SubredditEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String name, Uint8List? image});
}

/// @nodoc
class __$$_SubredditEntityCopyWithImpl<$Res>
    extends _$SubredditEntityCopyWithImpl<$Res, _$_SubredditEntity>
    implements _$$_SubredditEntityCopyWith<$Res> {
  __$$_SubredditEntityCopyWithImpl(
      _$_SubredditEntity _value, $Res Function(_$_SubredditEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? image = freezed,
  }) {
    return _then(_$_SubredditEntity(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$_SubredditEntity implements _SubredditEntity {
  _$_SubredditEntity({this.id, required this.name, this.image});

  @override
  final int? id;
  @override
  final String name;
  @override
  final Uint8List? image;

  @override
  String toString() {
    return 'SubredditEntity(id: $id, name: $name, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubredditEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubredditEntityCopyWith<_$_SubredditEntity> get copyWith =>
      __$$_SubredditEntityCopyWithImpl<_$_SubredditEntity>(this, _$identity);
}

abstract class _SubredditEntity implements SubredditEntity {
  factory _SubredditEntity(
      {final int? id,
      required final String name,
      final Uint8List? image}) = _$_SubredditEntity;

  @override
  int? get id;
  @override
  String get name;
  @override
  Uint8List? get image;
  @override
  @JsonKey(ignore: true)
  _$$_SubredditEntityCopyWith<_$_SubredditEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
