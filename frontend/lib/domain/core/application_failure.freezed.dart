// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'application_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApplicationFailure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) infrastructureFailure,
    required TResult Function(String message, int code) httpFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? infrastructureFailure,
    TResult? Function(String message, int code)? httpFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? infrastructureFailure,
    TResult Function(String message, int code)? httpFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InfrastructureException value)
        infrastructureFailure,
    required TResult Function(_HttpFailure value) httpFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InfrastructureException value)? infrastructureFailure,
    TResult? Function(_HttpFailure value)? httpFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InfrastructureException value)? infrastructureFailure,
    TResult Function(_HttpFailure value)? httpFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApplicationFailureCopyWith<ApplicationFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationFailureCopyWith<$Res> {
  factory $ApplicationFailureCopyWith(
          ApplicationFailure value, $Res Function(ApplicationFailure) then) =
      _$ApplicationFailureCopyWithImpl<$Res, ApplicationFailure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ApplicationFailureCopyWithImpl<$Res, $Val extends ApplicationFailure>
    implements $ApplicationFailureCopyWith<$Res> {
  _$ApplicationFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InfrastructureExceptionCopyWith<$Res>
    implements $ApplicationFailureCopyWith<$Res> {
  factory _$$_InfrastructureExceptionCopyWith(_$_InfrastructureException value,
          $Res Function(_$_InfrastructureException) then) =
      __$$_InfrastructureExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_InfrastructureExceptionCopyWithImpl<$Res>
    extends _$ApplicationFailureCopyWithImpl<$Res, _$_InfrastructureException>
    implements _$$_InfrastructureExceptionCopyWith<$Res> {
  __$$_InfrastructureExceptionCopyWithImpl(_$_InfrastructureException _value,
      $Res Function(_$_InfrastructureException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_InfrastructureException(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InfrastructureException implements _InfrastructureException {
  const _$_InfrastructureException(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ApplicationFailure.infrastructureFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InfrastructureException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InfrastructureExceptionCopyWith<_$_InfrastructureException>
      get copyWith =>
          __$$_InfrastructureExceptionCopyWithImpl<_$_InfrastructureException>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) infrastructureFailure,
    required TResult Function(String message, int code) httpFailure,
  }) {
    return infrastructureFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? infrastructureFailure,
    TResult? Function(String message, int code)? httpFailure,
  }) {
    return infrastructureFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? infrastructureFailure,
    TResult Function(String message, int code)? httpFailure,
    required TResult orElse(),
  }) {
    if (infrastructureFailure != null) {
      return infrastructureFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InfrastructureException value)
        infrastructureFailure,
    required TResult Function(_HttpFailure value) httpFailure,
  }) {
    return infrastructureFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InfrastructureException value)? infrastructureFailure,
    TResult? Function(_HttpFailure value)? httpFailure,
  }) {
    return infrastructureFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InfrastructureException value)? infrastructureFailure,
    TResult Function(_HttpFailure value)? httpFailure,
    required TResult orElse(),
  }) {
    if (infrastructureFailure != null) {
      return infrastructureFailure(this);
    }
    return orElse();
  }
}

abstract class _InfrastructureException implements ApplicationFailure {
  const factory _InfrastructureException(final String message) =
      _$_InfrastructureException;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_InfrastructureExceptionCopyWith<_$_InfrastructureException>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HttpFailureCopyWith<$Res>
    implements $ApplicationFailureCopyWith<$Res> {
  factory _$$_HttpFailureCopyWith(
          _$_HttpFailure value, $Res Function(_$_HttpFailure) then) =
      __$$_HttpFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int code});
}

/// @nodoc
class __$$_HttpFailureCopyWithImpl<$Res>
    extends _$ApplicationFailureCopyWithImpl<$Res, _$_HttpFailure>
    implements _$$_HttpFailureCopyWith<$Res> {
  __$$_HttpFailureCopyWithImpl(
      _$_HttpFailure _value, $Res Function(_$_HttpFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$_HttpFailure(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HttpFailure implements _HttpFailure {
  const _$_HttpFailure(this.message, this.code);

  @override
  final String message;
  @override
  final int code;

  @override
  String toString() {
    return 'ApplicationFailure.httpFailure(message: $message, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HttpFailure &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HttpFailureCopyWith<_$_HttpFailure> get copyWith =>
      __$$_HttpFailureCopyWithImpl<_$_HttpFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) infrastructureFailure,
    required TResult Function(String message, int code) httpFailure,
  }) {
    return httpFailure(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? infrastructureFailure,
    TResult? Function(String message, int code)? httpFailure,
  }) {
    return httpFailure?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? infrastructureFailure,
    TResult Function(String message, int code)? httpFailure,
    required TResult orElse(),
  }) {
    if (httpFailure != null) {
      return httpFailure(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InfrastructureException value)
        infrastructureFailure,
    required TResult Function(_HttpFailure value) httpFailure,
  }) {
    return httpFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InfrastructureException value)? infrastructureFailure,
    TResult? Function(_HttpFailure value)? httpFailure,
  }) {
    return httpFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InfrastructureException value)? infrastructureFailure,
    TResult Function(_HttpFailure value)? httpFailure,
    required TResult orElse(),
  }) {
    if (httpFailure != null) {
      return httpFailure(this);
    }
    return orElse();
  }
}

abstract class _HttpFailure implements ApplicationFailure {
  const factory _HttpFailure(final String message, final int code) =
      _$_HttpFailure;

  @override
  String get message;
  int get code;
  @override
  @JsonKey(ignore: true)
  _$$_HttpFailureCopyWith<_$_HttpFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
