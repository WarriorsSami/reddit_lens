// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subreddit_dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubredditDashboardEvent {
  String get subreddit => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String subreddit) subredditUnselected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String subreddit)? subredditUnselected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subreddit)? subredditUnselected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubredditUnselected value) subredditUnselected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubredditUnselected value)? subredditUnselected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubredditUnselected value)? subredditUnselected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubredditDashboardEventCopyWith<SubredditDashboardEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubredditDashboardEventCopyWith<$Res> {
  factory $SubredditDashboardEventCopyWith(SubredditDashboardEvent value,
          $Res Function(SubredditDashboardEvent) then) =
      _$SubredditDashboardEventCopyWithImpl<$Res, SubredditDashboardEvent>;
  @useResult
  $Res call({String subreddit});
}

/// @nodoc
class _$SubredditDashboardEventCopyWithImpl<$Res,
        $Val extends SubredditDashboardEvent>
    implements $SubredditDashboardEventCopyWith<$Res> {
  _$SubredditDashboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subreddit = null,
  }) {
    return _then(_value.copyWith(
      subreddit: null == subreddit
          ? _value.subreddit
          : subreddit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubredditUnselectedCopyWith<$Res>
    implements $SubredditDashboardEventCopyWith<$Res> {
  factory _$$_SubredditUnselectedCopyWith(_$_SubredditUnselected value,
          $Res Function(_$_SubredditUnselected) then) =
      __$$_SubredditUnselectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String subreddit});
}

/// @nodoc
class __$$_SubredditUnselectedCopyWithImpl<$Res>
    extends _$SubredditDashboardEventCopyWithImpl<$Res, _$_SubredditUnselected>
    implements _$$_SubredditUnselectedCopyWith<$Res> {
  __$$_SubredditUnselectedCopyWithImpl(_$_SubredditUnselected _value,
      $Res Function(_$_SubredditUnselected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subreddit = null,
  }) {
    return _then(_$_SubredditUnselected(
      null == subreddit
          ? _value.subreddit
          : subreddit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SubredditUnselected implements _SubredditUnselected {
  const _$_SubredditUnselected(this.subreddit);

  @override
  final String subreddit;

  @override
  String toString() {
    return 'SubredditDashboardEvent.subredditUnselected(subreddit: $subreddit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubredditUnselected &&
            (identical(other.subreddit, subreddit) ||
                other.subreddit == subreddit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subreddit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubredditUnselectedCopyWith<_$_SubredditUnselected> get copyWith =>
      __$$_SubredditUnselectedCopyWithImpl<_$_SubredditUnselected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String subreddit) subredditUnselected,
  }) {
    return subredditUnselected(subreddit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String subreddit)? subredditUnselected,
  }) {
    return subredditUnselected?.call(subreddit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subreddit)? subredditUnselected,
    required TResult orElse(),
  }) {
    if (subredditUnselected != null) {
      return subredditUnselected(subreddit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubredditUnselected value) subredditUnselected,
  }) {
    return subredditUnselected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubredditUnselected value)? subredditUnselected,
  }) {
    return subredditUnselected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubredditUnselected value)? subredditUnselected,
    required TResult orElse(),
  }) {
    if (subredditUnselected != null) {
      return subredditUnselected(this);
    }
    return orElse();
  }
}

abstract class _SubredditUnselected implements SubredditDashboardEvent {
  const factory _SubredditUnselected(final String subreddit) =
      _$_SubredditUnselected;

  @override
  String get subreddit;
  @override
  @JsonKey(ignore: true)
  _$$_SubredditUnselectedCopyWith<_$_SubredditUnselected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubredditDashboardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<CommentEntity> subredditComments)
        loadSuccess,
    required TResult Function(ApplicationFailure subredditFailure) loadFailure,
    required TResult Function() unloadServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<CommentEntity> subredditComments)? loadSuccess,
    TResult? Function(ApplicationFailure subredditFailure)? loadFailure,
    TResult? Function()? unloadServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<CommentEntity> subredditComments)? loadSuccess,
    TResult Function(ApplicationFailure subredditFailure)? loadFailure,
    TResult Function()? unloadServer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_UnloadServer value) unloadServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_UnloadServer value)? unloadServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_UnloadServer value)? unloadServer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubredditDashboardStateCopyWith<$Res> {
  factory $SubredditDashboardStateCopyWith(SubredditDashboardState value,
          $Res Function(SubredditDashboardState) then) =
      _$SubredditDashboardStateCopyWithImpl<$Res, SubredditDashboardState>;
}

/// @nodoc
class _$SubredditDashboardStateCopyWithImpl<$Res,
        $Val extends SubredditDashboardState>
    implements $SubredditDashboardStateCopyWith<$Res> {
  _$SubredditDashboardStateCopyWithImpl(this._value, this._then);

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
    extends _$SubredditDashboardStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SubredditDashboardState.initial()';
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
    required TResult Function(KtList<CommentEntity> subredditComments)
        loadSuccess,
    required TResult Function(ApplicationFailure subredditFailure) loadFailure,
    required TResult Function() unloadServer,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<CommentEntity> subredditComments)? loadSuccess,
    TResult? Function(ApplicationFailure subredditFailure)? loadFailure,
    TResult? Function()? unloadServer,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<CommentEntity> subredditComments)? loadSuccess,
    TResult Function(ApplicationFailure subredditFailure)? loadFailure,
    TResult Function()? unloadServer,
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
    required TResult Function(_UnloadServer value) unloadServer,
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
    TResult? Function(_UnloadServer value)? unloadServer,
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
    TResult Function(_UnloadServer value)? unloadServer,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SubredditDashboardState {
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
    extends _$SubredditDashboardStateCopyWithImpl<$Res, _$_LoadInProgress>
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
    return 'SubredditDashboardState.loadInProgress()';
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
    required TResult Function(KtList<CommentEntity> subredditComments)
        loadSuccess,
    required TResult Function(ApplicationFailure subredditFailure) loadFailure,
    required TResult Function() unloadServer,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<CommentEntity> subredditComments)? loadSuccess,
    TResult? Function(ApplicationFailure subredditFailure)? loadFailure,
    TResult? Function()? unloadServer,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<CommentEntity> subredditComments)? loadSuccess,
    TResult Function(ApplicationFailure subredditFailure)? loadFailure,
    TResult Function()? unloadServer,
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
    required TResult Function(_UnloadServer value) unloadServer,
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
    TResult? Function(_UnloadServer value)? unloadServer,
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
    TResult Function(_UnloadServer value)? unloadServer,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements SubredditDashboardState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({KtList<CommentEntity> subredditComments});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$SubredditDashboardStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subredditComments = null,
  }) {
    return _then(_$_LoadSuccess(
      null == subredditComments
          ? _value.subredditComments
          : subredditComments // ignore: cast_nullable_to_non_nullable
              as KtList<CommentEntity>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.subredditComments);

  @override
  final KtList<CommentEntity> subredditComments;

  @override
  String toString() {
    return 'SubredditDashboardState.loadSuccess(subredditComments: $subredditComments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            (identical(other.subredditComments, subredditComments) ||
                other.subredditComments == subredditComments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subredditComments);

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
    required TResult Function(KtList<CommentEntity> subredditComments)
        loadSuccess,
    required TResult Function(ApplicationFailure subredditFailure) loadFailure,
    required TResult Function() unloadServer,
  }) {
    return loadSuccess(subredditComments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<CommentEntity> subredditComments)? loadSuccess,
    TResult? Function(ApplicationFailure subredditFailure)? loadFailure,
    TResult? Function()? unloadServer,
  }) {
    return loadSuccess?.call(subredditComments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<CommentEntity> subredditComments)? loadSuccess,
    TResult Function(ApplicationFailure subredditFailure)? loadFailure,
    TResult Function()? unloadServer,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(subredditComments);
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
    required TResult Function(_UnloadServer value) unloadServer,
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
    TResult? Function(_UnloadServer value)? unloadServer,
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
    TResult Function(_UnloadServer value)? unloadServer,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements SubredditDashboardState {
  const factory _LoadSuccess(final KtList<CommentEntity> subredditComments) =
      _$_LoadSuccess;

  KtList<CommentEntity> get subredditComments;
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
    extends _$SubredditDashboardStateCopyWithImpl<$Res, _$_LoadFailure>
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
    return 'SubredditDashboardState.loadFailure(subredditFailure: $subredditFailure)';
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
    required TResult Function(KtList<CommentEntity> subredditComments)
        loadSuccess,
    required TResult Function(ApplicationFailure subredditFailure) loadFailure,
    required TResult Function() unloadServer,
  }) {
    return loadFailure(subredditFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<CommentEntity> subredditComments)? loadSuccess,
    TResult? Function(ApplicationFailure subredditFailure)? loadFailure,
    TResult? Function()? unloadServer,
  }) {
    return loadFailure?.call(subredditFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<CommentEntity> subredditComments)? loadSuccess,
    TResult Function(ApplicationFailure subredditFailure)? loadFailure,
    TResult Function()? unloadServer,
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
    required TResult Function(_UnloadServer value) unloadServer,
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
    TResult? Function(_UnloadServer value)? unloadServer,
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
    TResult Function(_UnloadServer value)? unloadServer,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements SubredditDashboardState {
  const factory _LoadFailure(final ApplicationFailure subredditFailure) =
      _$_LoadFailure;

  ApplicationFailure get subredditFailure;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnloadServerCopyWith<$Res> {
  factory _$$_UnloadServerCopyWith(
          _$_UnloadServer value, $Res Function(_$_UnloadServer) then) =
      __$$_UnloadServerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnloadServerCopyWithImpl<$Res>
    extends _$SubredditDashboardStateCopyWithImpl<$Res, _$_UnloadServer>
    implements _$$_UnloadServerCopyWith<$Res> {
  __$$_UnloadServerCopyWithImpl(
      _$_UnloadServer _value, $Res Function(_$_UnloadServer) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnloadServer implements _UnloadServer {
  const _$_UnloadServer();

  @override
  String toString() {
    return 'SubredditDashboardState.unloadServer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnloadServer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<CommentEntity> subredditComments)
        loadSuccess,
    required TResult Function(ApplicationFailure subredditFailure) loadFailure,
    required TResult Function() unloadServer,
  }) {
    return unloadServer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<CommentEntity> subredditComments)? loadSuccess,
    TResult? Function(ApplicationFailure subredditFailure)? loadFailure,
    TResult? Function()? unloadServer,
  }) {
    return unloadServer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<CommentEntity> subredditComments)? loadSuccess,
    TResult Function(ApplicationFailure subredditFailure)? loadFailure,
    TResult Function()? unloadServer,
    required TResult orElse(),
  }) {
    if (unloadServer != null) {
      return unloadServer();
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
    required TResult Function(_UnloadServer value) unloadServer,
  }) {
    return unloadServer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_UnloadServer value)? unloadServer,
  }) {
    return unloadServer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_UnloadServer value)? unloadServer,
    required TResult orElse(),
  }) {
    if (unloadServer != null) {
      return unloadServer(this);
    }
    return orElse();
  }
}

abstract class _UnloadServer implements SubredditDashboardState {
  const factory _UnloadServer() = _$_UnloadServer;
}
