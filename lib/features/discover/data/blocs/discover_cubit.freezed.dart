// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discover_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiscoverState _$DiscoverStateFromJson(Map<String, dynamic> json) {
  return _DiscoverState.fromJson(json);
}

/// @nodoc
mixin _$DiscoverState {
  List<AppUser> get profiles => throw _privateConstructorUsedError;
  List<AppUser> get matches => throw _privateConstructorUsedError;
  List<AppUser> get requests => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscoverStateCopyWith<DiscoverState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverStateCopyWith<$Res> {
  factory $DiscoverStateCopyWith(
          DiscoverState value, $Res Function(DiscoverState) then) =
      _$DiscoverStateCopyWithImpl<$Res, DiscoverState>;
  @useResult
  $Res call(
      {List<AppUser> profiles,
      List<AppUser> matches,
      List<AppUser> requests,
      bool isLoading});
}

/// @nodoc
class _$DiscoverStateCopyWithImpl<$Res, $Val extends DiscoverState>
    implements $DiscoverStateCopyWith<$Res> {
  _$DiscoverStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profiles = null,
    Object? matches = null,
    Object? requests = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      profiles: null == profiles
          ? _value.profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<AppUser>,
      matches: null == matches
          ? _value.matches
          : matches // ignore: cast_nullable_to_non_nullable
              as List<AppUser>,
      requests: null == requests
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<AppUser>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscoverStateImplCopyWith<$Res>
    implements $DiscoverStateCopyWith<$Res> {
  factory _$$DiscoverStateImplCopyWith(
          _$DiscoverStateImpl value, $Res Function(_$DiscoverStateImpl) then) =
      __$$DiscoverStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AppUser> profiles,
      List<AppUser> matches,
      List<AppUser> requests,
      bool isLoading});
}

/// @nodoc
class __$$DiscoverStateImplCopyWithImpl<$Res>
    extends _$DiscoverStateCopyWithImpl<$Res, _$DiscoverStateImpl>
    implements _$$DiscoverStateImplCopyWith<$Res> {
  __$$DiscoverStateImplCopyWithImpl(
      _$DiscoverStateImpl _value, $Res Function(_$DiscoverStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profiles = null,
    Object? matches = null,
    Object? requests = null,
    Object? isLoading = null,
  }) {
    return _then(_$DiscoverStateImpl(
      profiles: null == profiles
          ? _value._profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<AppUser>,
      matches: null == matches
          ? _value._matches
          : matches // ignore: cast_nullable_to_non_nullable
              as List<AppUser>,
      requests: null == requests
          ? _value._requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<AppUser>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscoverStateImpl implements _DiscoverState {
  const _$DiscoverStateImpl(
      {final List<AppUser> profiles = const [],
      final List<AppUser> matches = const [],
      final List<AppUser> requests = const [],
      this.isLoading = false})
      : _profiles = profiles,
        _matches = matches,
        _requests = requests;

  factory _$DiscoverStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscoverStateImplFromJson(json);

  final List<AppUser> _profiles;
  @override
  @JsonKey()
  List<AppUser> get profiles {
    if (_profiles is EqualUnmodifiableListView) return _profiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_profiles);
  }

  final List<AppUser> _matches;
  @override
  @JsonKey()
  List<AppUser> get matches {
    if (_matches is EqualUnmodifiableListView) return _matches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matches);
  }

  final List<AppUser> _requests;
  @override
  @JsonKey()
  List<AppUser> get requests {
    if (_requests is EqualUnmodifiableListView) return _requests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requests);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'DiscoverState(profiles: $profiles, matches: $matches, requests: $requests, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscoverStateImpl &&
            const DeepCollectionEquality().equals(other._profiles, _profiles) &&
            const DeepCollectionEquality().equals(other._matches, _matches) &&
            const DeepCollectionEquality().equals(other._requests, _requests) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_profiles),
      const DeepCollectionEquality().hash(_matches),
      const DeepCollectionEquality().hash(_requests),
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscoverStateImplCopyWith<_$DiscoverStateImpl> get copyWith =>
      __$$DiscoverStateImplCopyWithImpl<_$DiscoverStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscoverStateImplToJson(
      this,
    );
  }
}

abstract class _DiscoverState implements DiscoverState {
  const factory _DiscoverState(
      {final List<AppUser> profiles,
      final List<AppUser> matches,
      final List<AppUser> requests,
      final bool isLoading}) = _$DiscoverStateImpl;

  factory _DiscoverState.fromJson(Map<String, dynamic> json) =
      _$DiscoverStateImpl.fromJson;

  @override
  List<AppUser> get profiles;
  @override
  List<AppUser> get matches;
  @override
  List<AppUser> get requests;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$DiscoverStateImplCopyWith<_$DiscoverStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
