// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subreddits_overview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubredditsOverviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String subreddit) subredditAdded,
    required TResult Function(String subreddit) subredditRemoved,
    required TResult Function(String subreddit) subredditSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String subreddit)? subredditAdded,
    TResult? Function(String subreddit)? subredditRemoved,
    TResult? Function(String subreddit)? subredditSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String subreddit)? subredditAdded,
    TResult Function(String subreddit)? subredditRemoved,
    TResult Function(String subreddit)? subredditSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubredditAdded value) subredditAdded,
    required TResult Function(_SubredditRemoved value) subredditRemoved,
    required TResult Function(_SubredditSelected value) subredditSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubredditAdded value)? subredditAdded,
    TResult? Function(_SubredditRemoved value)? subredditRemoved,
    TResult? Function(_SubredditSelected value)? subredditSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubredditAdded value)? subredditAdded,
    TResult Function(_SubredditRemoved value)? subredditRemoved,
    TResult Function(_SubredditSelected value)? subredditSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubredditsOverviewEventCopyWith<$Res> {
  factory $SubredditsOverviewEventCopyWith(SubredditsOverviewEvent value,
          $Res Function(SubredditsOverviewEvent) then) =
      _$SubredditsOverviewEventCopyWithImpl<$Res, SubredditsOverviewEvent>;
}

/// @nodoc
class _$SubredditsOverviewEventCopyWithImpl<$Res,
        $Val extends SubredditsOverviewEvent>
    implements $SubredditsOverviewEventCopyWith<$Res> {
  _$SubredditsOverviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$SubredditsOverviewEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'SubredditsOverviewEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String subreddit) subredditAdded,
    required TResult Function(String subreddit) subredditRemoved,
    required TResult Function(String subreddit) subredditSelected,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String subreddit)? subredditAdded,
    TResult? Function(String subreddit)? subredditRemoved,
    TResult? Function(String subreddit)? subredditSelected,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String subreddit)? subredditAdded,
    TResult Function(String subreddit)? subredditRemoved,
    TResult Function(String subreddit)? subredditSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubredditAdded value) subredditAdded,
    required TResult Function(_SubredditRemoved value) subredditRemoved,
    required TResult Function(_SubredditSelected value) subredditSelected,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubredditAdded value)? subredditAdded,
    TResult? Function(_SubredditRemoved value)? subredditRemoved,
    TResult? Function(_SubredditSelected value)? subredditSelected,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubredditAdded value)? subredditAdded,
    TResult Function(_SubredditRemoved value)? subredditRemoved,
    TResult Function(_SubredditSelected value)? subredditSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SubredditsOverviewEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_SubredditAddedCopyWith<$Res> {
  factory _$$_SubredditAddedCopyWith(
          _$_SubredditAdded value, $Res Function(_$_SubredditAdded) then) =
      __$$_SubredditAddedCopyWithImpl<$Res>;
  @useResult
  $Res call({String subreddit});
}

/// @nodoc
class __$$_SubredditAddedCopyWithImpl<$Res>
    extends _$SubredditsOverviewEventCopyWithImpl<$Res, _$_SubredditAdded>
    implements _$$_SubredditAddedCopyWith<$Res> {
  __$$_SubredditAddedCopyWithImpl(
      _$_SubredditAdded _value, $Res Function(_$_SubredditAdded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subreddit = null,
  }) {
    return _then(_$_SubredditAdded(
      null == subreddit
          ? _value.subreddit
          : subreddit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SubredditAdded implements _SubredditAdded {
  const _$_SubredditAdded(this.subreddit);

  @override
  final String subreddit;

  @override
  String toString() {
    return 'SubredditsOverviewEvent.subredditAdded(subreddit: $subreddit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubredditAdded &&
            (identical(other.subreddit, subreddit) ||
                other.subreddit == subreddit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subreddit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubredditAddedCopyWith<_$_SubredditAdded> get copyWith =>
      __$$_SubredditAddedCopyWithImpl<_$_SubredditAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String subreddit) subredditAdded,
    required TResult Function(String subreddit) subredditRemoved,
    required TResult Function(String subreddit) subredditSelected,
  }) {
    return subredditAdded(subreddit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String subreddit)? subredditAdded,
    TResult? Function(String subreddit)? subredditRemoved,
    TResult? Function(String subreddit)? subredditSelected,
  }) {
    return subredditAdded?.call(subreddit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String subreddit)? subredditAdded,
    TResult Function(String subreddit)? subredditRemoved,
    TResult Function(String subreddit)? subredditSelected,
    required TResult orElse(),
  }) {
    if (subredditAdded != null) {
      return subredditAdded(subreddit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubredditAdded value) subredditAdded,
    required TResult Function(_SubredditRemoved value) subredditRemoved,
    required TResult Function(_SubredditSelected value) subredditSelected,
  }) {
    return subredditAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubredditAdded value)? subredditAdded,
    TResult? Function(_SubredditRemoved value)? subredditRemoved,
    TResult? Function(_SubredditSelected value)? subredditSelected,
  }) {
    return subredditAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubredditAdded value)? subredditAdded,
    TResult Function(_SubredditRemoved value)? subredditRemoved,
    TResult Function(_SubredditSelected value)? subredditSelected,
    required TResult orElse(),
  }) {
    if (subredditAdded != null) {
      return subredditAdded(this);
    }
    return orElse();
  }
}

abstract class _SubredditAdded implements SubredditsOverviewEvent {
  const factory _SubredditAdded(final String subreddit) = _$_SubredditAdded;

  String get subreddit;
  @JsonKey(ignore: true)
  _$$_SubredditAddedCopyWith<_$_SubredditAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubredditRemovedCopyWith<$Res> {
  factory _$$_SubredditRemovedCopyWith(
          _$_SubredditRemoved value, $Res Function(_$_SubredditRemoved) then) =
      __$$_SubredditRemovedCopyWithImpl<$Res>;
  @useResult
  $Res call({String subreddit});
}

/// @nodoc
class __$$_SubredditRemovedCopyWithImpl<$Res>
    extends _$SubredditsOverviewEventCopyWithImpl<$Res, _$_SubredditRemoved>
    implements _$$_SubredditRemovedCopyWith<$Res> {
  __$$_SubredditRemovedCopyWithImpl(
      _$_SubredditRemoved _value, $Res Function(_$_SubredditRemoved) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subreddit = null,
  }) {
    return _then(_$_SubredditRemoved(
      null == subreddit
          ? _value.subreddit
          : subreddit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SubredditRemoved implements _SubredditRemoved {
  const _$_SubredditRemoved(this.subreddit);

  @override
  final String subreddit;

  @override
  String toString() {
    return 'SubredditsOverviewEvent.subredditRemoved(subreddit: $subreddit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubredditRemoved &&
            (identical(other.subreddit, subreddit) ||
                other.subreddit == subreddit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subreddit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubredditRemovedCopyWith<_$_SubredditRemoved> get copyWith =>
      __$$_SubredditRemovedCopyWithImpl<_$_SubredditRemoved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String subreddit) subredditAdded,
    required TResult Function(String subreddit) subredditRemoved,
    required TResult Function(String subreddit) subredditSelected,
  }) {
    return subredditRemoved(subreddit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String subreddit)? subredditAdded,
    TResult? Function(String subreddit)? subredditRemoved,
    TResult? Function(String subreddit)? subredditSelected,
  }) {
    return subredditRemoved?.call(subreddit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String subreddit)? subredditAdded,
    TResult Function(String subreddit)? subredditRemoved,
    TResult Function(String subreddit)? subredditSelected,
    required TResult orElse(),
  }) {
    if (subredditRemoved != null) {
      return subredditRemoved(subreddit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubredditAdded value) subredditAdded,
    required TResult Function(_SubredditRemoved value) subredditRemoved,
    required TResult Function(_SubredditSelected value) subredditSelected,
  }) {
    return subredditRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubredditAdded value)? subredditAdded,
    TResult? Function(_SubredditRemoved value)? subredditRemoved,
    TResult? Function(_SubredditSelected value)? subredditSelected,
  }) {
    return subredditRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubredditAdded value)? subredditAdded,
    TResult Function(_SubredditRemoved value)? subredditRemoved,
    TResult Function(_SubredditSelected value)? subredditSelected,
    required TResult orElse(),
  }) {
    if (subredditRemoved != null) {
      return subredditRemoved(this);
    }
    return orElse();
  }
}

abstract class _SubredditRemoved implements SubredditsOverviewEvent {
  const factory _SubredditRemoved(final String subreddit) = _$_SubredditRemoved;

  String get subreddit;
  @JsonKey(ignore: true)
  _$$_SubredditRemovedCopyWith<_$_SubredditRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubredditSelectedCopyWith<$Res> {
  factory _$$_SubredditSelectedCopyWith(_$_SubredditSelected value,
          $Res Function(_$_SubredditSelected) then) =
      __$$_SubredditSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({String subreddit});
}

/// @nodoc
class __$$_SubredditSelectedCopyWithImpl<$Res>
    extends _$SubredditsOverviewEventCopyWithImpl<$Res, _$_SubredditSelected>
    implements _$$_SubredditSelectedCopyWith<$Res> {
  __$$_SubredditSelectedCopyWithImpl(
      _$_SubredditSelected _value, $Res Function(_$_SubredditSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subreddit = null,
  }) {
    return _then(_$_SubredditSelected(
      null == subreddit
          ? _value.subreddit
          : subreddit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SubredditSelected implements _SubredditSelected {
  const _$_SubredditSelected(this.subreddit);

  @override
  final String subreddit;

  @override
  String toString() {
    return 'SubredditsOverviewEvent.subredditSelected(subreddit: $subreddit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubredditSelected &&
            (identical(other.subreddit, subreddit) ||
                other.subreddit == subreddit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subreddit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubredditSelectedCopyWith<_$_SubredditSelected> get copyWith =>
      __$$_SubredditSelectedCopyWithImpl<_$_SubredditSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String subreddit) subredditAdded,
    required TResult Function(String subreddit) subredditRemoved,
    required TResult Function(String subreddit) subredditSelected,
  }) {
    return subredditSelected(subreddit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String subreddit)? subredditAdded,
    TResult? Function(String subreddit)? subredditRemoved,
    TResult? Function(String subreddit)? subredditSelected,
  }) {
    return subredditSelected?.call(subreddit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String subreddit)? subredditAdded,
    TResult Function(String subreddit)? subredditRemoved,
    TResult Function(String subreddit)? subredditSelected,
    required TResult orElse(),
  }) {
    if (subredditSelected != null) {
      return subredditSelected(subreddit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubredditAdded value) subredditAdded,
    required TResult Function(_SubredditRemoved value) subredditRemoved,
    required TResult Function(_SubredditSelected value) subredditSelected,
  }) {
    return subredditSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubredditAdded value)? subredditAdded,
    TResult? Function(_SubredditRemoved value)? subredditRemoved,
    TResult? Function(_SubredditSelected value)? subredditSelected,
  }) {
    return subredditSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubredditAdded value)? subredditAdded,
    TResult Function(_SubredditRemoved value)? subredditRemoved,
    TResult Function(_SubredditSelected value)? subredditSelected,
    required TResult orElse(),
  }) {
    if (subredditSelected != null) {
      return subredditSelected(this);
    }
    return orElse();
  }
}

abstract class _SubredditSelected implements SubredditsOverviewEvent {
  const factory _SubredditSelected(final String subreddit) =
      _$_SubredditSelected;

  String get subreddit;
  @JsonKey(ignore: true)
  _$$_SubredditSelectedCopyWith<_$_SubredditSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubredditsOverviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<SubredditEntity> subreddits) loadSuccess,
    required TResult Function(ApplicationFailure subredditFailure) loadFailure,
    required TResult Function(String subreddit) loadServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<SubredditEntity> subreddits)? loadSuccess,
    TResult? Function(ApplicationFailure subredditFailure)? loadFailure,
    TResult? Function(String subreddit)? loadServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<SubredditEntity> subreddits)? loadSuccess,
    TResult Function(ApplicationFailure subredditFailure)? loadFailure,
    TResult Function(String subreddit)? loadServer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadServer value) loadServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadServer value)? loadServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadServer value)? loadServer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubredditsOverviewStateCopyWith<$Res> {
  factory $SubredditsOverviewStateCopyWith(SubredditsOverviewState value,
          $Res Function(SubredditsOverviewState) then) =
      _$SubredditsOverviewStateCopyWithImpl<$Res, SubredditsOverviewState>;
}

/// @nodoc
class _$SubredditsOverviewStateCopyWithImpl<$Res,
        $Val extends SubredditsOverviewState>
    implements $SubredditsOverviewStateCopyWith<$Res> {
  _$SubredditsOverviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SubredditsOverviewStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SubredditsOverviewState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<SubredditEntity> subreddits) loadSuccess,
    required TResult Function(ApplicationFailure subredditFailure) loadFailure,
    required TResult Function(String subreddit) loadServer,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<SubredditEntity> subreddits)? loadSuccess,
    TResult? Function(ApplicationFailure subredditFailure)? loadFailure,
    TResult? Function(String subreddit)? loadServer,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<SubredditEntity> subreddits)? loadSuccess,
    TResult Function(ApplicationFailure subredditFailure)? loadFailure,
    TResult Function(String subreddit)? loadServer,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadServer value) loadServer,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadServer value)? loadServer,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadServer value)? loadServer,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SubredditsOverviewState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$SubredditsOverviewStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'SubredditsOverviewState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<SubredditEntity> subreddits) loadSuccess,
    required TResult Function(ApplicationFailure subredditFailure) loadFailure,
    required TResult Function(String subreddit) loadServer,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<SubredditEntity> subreddits)? loadSuccess,
    TResult? Function(ApplicationFailure subredditFailure)? loadFailure,
    TResult? Function(String subreddit)? loadServer,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<SubredditEntity> subreddits)? loadSuccess,
    TResult Function(ApplicationFailure subredditFailure)? loadFailure,
    TResult Function(String subreddit)? loadServer,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadServer value) loadServer,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadServer value)? loadServer,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadServer value)? loadServer,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements SubredditsOverviewState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({KtList<SubredditEntity> subreddits});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$SubredditsOverviewStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subreddits = null,
  }) {
    return _then(_$_LoadSuccess(
      null == subreddits
          ? _value.subreddits
          : subreddits // ignore: cast_nullable_to_non_nullable
              as KtList<SubredditEntity>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.subreddits);

  @override
  final KtList<SubredditEntity> subreddits;

  @override
  String toString() {
    return 'SubredditsOverviewState.loadSuccess(subreddits: $subreddits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            (identical(other.subreddits, subreddits) ||
                other.subreddits == subreddits));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subreddits);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<SubredditEntity> subreddits) loadSuccess,
    required TResult Function(ApplicationFailure subredditFailure) loadFailure,
    required TResult Function(String subreddit) loadServer,
  }) {
    return loadSuccess(subreddits);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<SubredditEntity> subreddits)? loadSuccess,
    TResult? Function(ApplicationFailure subredditFailure)? loadFailure,
    TResult? Function(String subreddit)? loadServer,
  }) {
    return loadSuccess?.call(subreddits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<SubredditEntity> subreddits)? loadSuccess,
    TResult Function(ApplicationFailure subredditFailure)? loadFailure,
    TResult Function(String subreddit)? loadServer,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(subreddits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadServer value) loadServer,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadServer value)? loadServer,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadServer value)? loadServer,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements SubredditsOverviewState {
  const factory _LoadSuccess(final KtList<SubredditEntity> subreddits) =
      _$_LoadSuccess;

  KtList<SubredditEntity> get subreddits;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({ApplicationFailure subredditFailure});

  $ApplicationFailureCopyWith<$Res> get subredditFailure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$SubredditsOverviewStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subredditFailure = null,
  }) {
    return _then(_$_LoadFailure(
      null == subredditFailure
          ? _value.subredditFailure
          : subredditFailure // ignore: cast_nullable_to_non_nullable
              as ApplicationFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ApplicationFailureCopyWith<$Res> get subredditFailure {
    return $ApplicationFailureCopyWith<$Res>(_value.subredditFailure, (value) {
      return _then(_value.copyWith(subredditFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.subredditFailure);

  @override
  final ApplicationFailure subredditFailure;

  @override
  String toString() {
    return 'SubredditsOverviewState.loadFailure(subredditFailure: $subredditFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.subredditFailure, subredditFailure) ||
                other.subredditFailure == subredditFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subredditFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<SubredditEntity> subreddits) loadSuccess,
    required TResult Function(ApplicationFailure subredditFailure) loadFailure,
    required TResult Function(String subreddit) loadServer,
  }) {
    return loadFailure(subredditFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<SubredditEntity> subreddits)? loadSuccess,
    TResult? Function(ApplicationFailure subredditFailure)? loadFailure,
    TResult? Function(String subreddit)? loadServer,
  }) {
    return loadFailure?.call(subredditFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<SubredditEntity> subreddits)? loadSuccess,
    TResult Function(ApplicationFailure subredditFailure)? loadFailure,
    TResult Function(String subreddit)? loadServer,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(subredditFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadServer value) loadServer,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadServer value)? loadServer,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadServer value)? loadServer,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements SubredditsOverviewState {
  const factory _LoadFailure(final ApplicationFailure subredditFailure) =
      _$_LoadFailure;

  ApplicationFailure get subredditFailure;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadServerCopyWith<$Res> {
  factory _$$_LoadServerCopyWith(
          _$_LoadServer value, $Res Function(_$_LoadServer) then) =
      __$$_LoadServerCopyWithImpl<$Res>;
  @useResult
  $Res call({String subreddit});
}

/// @nodoc
class __$$_LoadServerCopyWithImpl<$Res>
    extends _$SubredditsOverviewStateCopyWithImpl<$Res, _$_LoadServer>
    implements _$$_LoadServerCopyWith<$Res> {
  __$$_LoadServerCopyWithImpl(
      _$_LoadServer _value, $Res Function(_$_LoadServer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subreddit = null,
  }) {
    return _then(_$_LoadServer(
      null == subreddit
          ? _value.subreddit
          : subreddit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadServer implements _LoadServer {
  const _$_LoadServer(this.subreddit);

  @override
  final String subreddit;

  @override
  String toString() {
    return 'SubredditsOverviewState.loadServer(subreddit: $subreddit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadServer &&
            (identical(other.subreddit, subreddit) ||
                other.subreddit == subreddit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subreddit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadServerCopyWith<_$_LoadServer> get copyWith =>
      __$$_LoadServerCopyWithImpl<_$_LoadServer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<SubredditEntity> subreddits) loadSuccess,
    required TResult Function(ApplicationFailure subredditFailure) loadFailure,
    required TResult Function(String subreddit) loadServer,
  }) {
    return loadServer(subreddit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<SubredditEntity> subreddits)? loadSuccess,
    TResult? Function(ApplicationFailure subredditFailure)? loadFailure,
    TResult? Function(String subreddit)? loadServer,
  }) {
    return loadServer?.call(subreddit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<SubredditEntity> subreddits)? loadSuccess,
    TResult Function(ApplicationFailure subredditFailure)? loadFailure,
    TResult Function(String subreddit)? loadServer,
    required TResult orElse(),
  }) {
    if (loadServer != null) {
      return loadServer(subreddit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadServer value) loadServer,
  }) {
    return loadServer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadServer value)? loadServer,
  }) {
    return loadServer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadServer value)? loadServer,
    required TResult orElse(),
  }) {
    if (loadServer != null) {
      return loadServer(this);
    }
    return orElse();
  }
}

abstract class _LoadServer implements SubredditsOverviewState {
  const factory _LoadServer(final String subreddit) = _$_LoadServer;

  String get subreddit;
  @JsonKey(ignore: true)
  _$$_LoadServerCopyWith<_$_LoadServer> get copyWith =>
      throw _privateConstructorUsedError;
}
