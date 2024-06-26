// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamState _$TeamStateFromJson(Map<String, dynamic> json) {
  return _TeamState.fromJson(json);
}

/// @nodoc
mixin _$TeamState {
  UserTeam? get team => throw _privateConstructorUsedError;
  List<UserTeam> get teams => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get pickedImagePath => throw _privateConstructorUsedError;
  List<TeamVacancy> get vacancies => throw _privateConstructorUsedError;
  List<AppUser> get joinRequests => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamStateCopyWith<TeamState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamStateCopyWith<$Res> {
  factory $TeamStateCopyWith(TeamState value, $Res Function(TeamState) then) =
      _$TeamStateCopyWithImpl<$Res, TeamState>;
  @useResult
  $Res call(
      {UserTeam? team,
      List<UserTeam> teams,
      bool isLoading,
      String? pickedImagePath,
      List<TeamVacancy> vacancies,
      List<AppUser> joinRequests});

  $UserTeamCopyWith<$Res>? get team;
}

/// @nodoc
class _$TeamStateCopyWithImpl<$Res, $Val extends TeamState>
    implements $TeamStateCopyWith<$Res> {
  _$TeamStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = freezed,
    Object? teams = null,
    Object? isLoading = null,
    Object? pickedImagePath = freezed,
    Object? vacancies = null,
    Object? joinRequests = null,
  }) {
    return _then(_value.copyWith(
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as UserTeam?,
      teams: null == teams
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as List<UserTeam>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pickedImagePath: freezed == pickedImagePath
          ? _value.pickedImagePath
          : pickedImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      vacancies: null == vacancies
          ? _value.vacancies
          : vacancies // ignore: cast_nullable_to_non_nullable
              as List<TeamVacancy>,
      joinRequests: null == joinRequests
          ? _value.joinRequests
          : joinRequests // ignore: cast_nullable_to_non_nullable
              as List<AppUser>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserTeamCopyWith<$Res>? get team {
    if (_value.team == null) {
      return null;
    }

    return $UserTeamCopyWith<$Res>(_value.team!, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeamStateImplCopyWith<$Res>
    implements $TeamStateCopyWith<$Res> {
  factory _$$TeamStateImplCopyWith(
          _$TeamStateImpl value, $Res Function(_$TeamStateImpl) then) =
      __$$TeamStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserTeam? team,
      List<UserTeam> teams,
      bool isLoading,
      String? pickedImagePath,
      List<TeamVacancy> vacancies,
      List<AppUser> joinRequests});

  @override
  $UserTeamCopyWith<$Res>? get team;
}

/// @nodoc
class __$$TeamStateImplCopyWithImpl<$Res>
    extends _$TeamStateCopyWithImpl<$Res, _$TeamStateImpl>
    implements _$$TeamStateImplCopyWith<$Res> {
  __$$TeamStateImplCopyWithImpl(
      _$TeamStateImpl _value, $Res Function(_$TeamStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = freezed,
    Object? teams = null,
    Object? isLoading = null,
    Object? pickedImagePath = freezed,
    Object? vacancies = null,
    Object? joinRequests = null,
  }) {
    return _then(_$TeamStateImpl(
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as UserTeam?,
      teams: null == teams
          ? _value._teams
          : teams // ignore: cast_nullable_to_non_nullable
              as List<UserTeam>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pickedImagePath: freezed == pickedImagePath
          ? _value.pickedImagePath
          : pickedImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      vacancies: null == vacancies
          ? _value._vacancies
          : vacancies // ignore: cast_nullable_to_non_nullable
              as List<TeamVacancy>,
      joinRequests: null == joinRequests
          ? _value._joinRequests
          : joinRequests // ignore: cast_nullable_to_non_nullable
              as List<AppUser>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamStateImpl implements _TeamState {
  const _$TeamStateImpl(
      {this.team,
      final List<UserTeam> teams = const [],
      this.isLoading = false,
      this.pickedImagePath,
      final List<TeamVacancy> vacancies = const [],
      final List<AppUser> joinRequests = const []})
      : _teams = teams,
        _vacancies = vacancies,
        _joinRequests = joinRequests;

  factory _$TeamStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamStateImplFromJson(json);

  @override
  final UserTeam? team;
  final List<UserTeam> _teams;
  @override
  @JsonKey()
  List<UserTeam> get teams {
    if (_teams is EqualUnmodifiableListView) return _teams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teams);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? pickedImagePath;
  final List<TeamVacancy> _vacancies;
  @override
  @JsonKey()
  List<TeamVacancy> get vacancies {
    if (_vacancies is EqualUnmodifiableListView) return _vacancies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vacancies);
  }

  final List<AppUser> _joinRequests;
  @override
  @JsonKey()
  List<AppUser> get joinRequests {
    if (_joinRequests is EqualUnmodifiableListView) return _joinRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_joinRequests);
  }

  @override
  String toString() {
    return 'TeamState(team: $team, teams: $teams, isLoading: $isLoading, pickedImagePath: $pickedImagePath, vacancies: $vacancies, joinRequests: $joinRequests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamStateImpl &&
            (identical(other.team, team) || other.team == team) &&
            const DeepCollectionEquality().equals(other._teams, _teams) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.pickedImagePath, pickedImagePath) ||
                other.pickedImagePath == pickedImagePath) &&
            const DeepCollectionEquality()
                .equals(other._vacancies, _vacancies) &&
            const DeepCollectionEquality()
                .equals(other._joinRequests, _joinRequests));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      team,
      const DeepCollectionEquality().hash(_teams),
      isLoading,
      pickedImagePath,
      const DeepCollectionEquality().hash(_vacancies),
      const DeepCollectionEquality().hash(_joinRequests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamStateImplCopyWith<_$TeamStateImpl> get copyWith =>
      __$$TeamStateImplCopyWithImpl<_$TeamStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamStateImplToJson(
      this,
    );
  }
}

abstract class _TeamState implements TeamState {
  const factory _TeamState(
      {final UserTeam? team,
      final List<UserTeam> teams,
      final bool isLoading,
      final String? pickedImagePath,
      final List<TeamVacancy> vacancies,
      final List<AppUser> joinRequests}) = _$TeamStateImpl;

  factory _TeamState.fromJson(Map<String, dynamic> json) =
      _$TeamStateImpl.fromJson;

  @override
  UserTeam? get team;
  @override
  List<UserTeam> get teams;
  @override
  bool get isLoading;
  @override
  String? get pickedImagePath;
  @override
  List<TeamVacancy> get vacancies;
  @override
  List<AppUser> get joinRequests;
  @override
  @JsonKey(ignore: true)
  _$$TeamStateImplCopyWith<_$TeamStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
