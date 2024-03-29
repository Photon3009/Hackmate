// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hackathon_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HackathonState _$HackathonStateFromJson(Map<String, dynamic> json) {
  return _HackathonState.fromJson(json);
}

/// @nodoc
mixin _$HackathonState {
  List<HackathonModel> get hackathons => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HackathonStateCopyWith<HackathonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HackathonStateCopyWith<$Res> {
  factory $HackathonStateCopyWith(
          HackathonState value, $Res Function(HackathonState) then) =
      _$HackathonStateCopyWithImpl<$Res, HackathonState>;
  @useResult
  $Res call({List<HackathonModel> hackathons, bool isLoading});
}

/// @nodoc
class _$HackathonStateCopyWithImpl<$Res, $Val extends HackathonState>
    implements $HackathonStateCopyWith<$Res> {
  _$HackathonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hackathons = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      hackathons: null == hackathons
          ? _value.hackathons
          : hackathons // ignore: cast_nullable_to_non_nullable
              as List<HackathonModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HackathonStateImplCopyWith<$Res>
    implements $HackathonStateCopyWith<$Res> {
  factory _$$HackathonStateImplCopyWith(_$HackathonStateImpl value,
          $Res Function(_$HackathonStateImpl) then) =
      __$$HackathonStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<HackathonModel> hackathons, bool isLoading});
}

/// @nodoc
class __$$HackathonStateImplCopyWithImpl<$Res>
    extends _$HackathonStateCopyWithImpl<$Res, _$HackathonStateImpl>
    implements _$$HackathonStateImplCopyWith<$Res> {
  __$$HackathonStateImplCopyWithImpl(
      _$HackathonStateImpl _value, $Res Function(_$HackathonStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hackathons = null,
    Object? isLoading = null,
  }) {
    return _then(_$HackathonStateImpl(
      hackathons: null == hackathons
          ? _value._hackathons
          : hackathons // ignore: cast_nullable_to_non_nullable
              as List<HackathonModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HackathonStateImpl implements _HackathonState {
  const _$HackathonStateImpl(
      {final List<HackathonModel> hackathons = const [],
      this.isLoading = false})
      : _hackathons = hackathons;

  factory _$HackathonStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$HackathonStateImplFromJson(json);

  final List<HackathonModel> _hackathons;
  @override
  @JsonKey()
  List<HackathonModel> get hackathons {
    if (_hackathons is EqualUnmodifiableListView) return _hackathons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hackathons);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'HackathonState(hackathons: $hackathons, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HackathonStateImpl &&
            const DeepCollectionEquality()
                .equals(other._hackathons, _hackathons) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_hackathons), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HackathonStateImplCopyWith<_$HackathonStateImpl> get copyWith =>
      __$$HackathonStateImplCopyWithImpl<_$HackathonStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HackathonStateImplToJson(
      this,
    );
  }
}

abstract class _HackathonState implements HackathonState {
  const factory _HackathonState(
      {final List<HackathonModel> hackathons,
      final bool isLoading}) = _$HackathonStateImpl;

  factory _HackathonState.fromJson(Map<String, dynamic> json) =
      _$HackathonStateImpl.fromJson;

  @override
  List<HackathonModel> get hackathons;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$HackathonStateImplCopyWith<_$HackathonStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
