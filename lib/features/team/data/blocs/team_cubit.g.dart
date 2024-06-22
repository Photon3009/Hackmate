// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamStateImpl _$$TeamStateImplFromJson(Map<String, dynamic> json) =>
    _$TeamStateImpl(
      team: json['team'] == null
          ? null
          : UserTeam.fromJson(json['team'] as Map<String, dynamic>),
      teams: (json['teams'] as List<dynamic>?)
              ?.map((e) => UserTeam.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
      pickedImagePath: json['pickedImagePath'] as String?,
      vacancies: (json['vacancies'] as List<dynamic>?)
              ?.map((e) => TeamVacancy.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      joinRequests: (json['joinRequests'] as List<dynamic>?)
              ?.map((e) => AppUser.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TeamStateImplToJson(_$TeamStateImpl instance) =>
    <String, dynamic>{
      'team': instance.team,
      'teams': instance.teams,
      'isLoading': instance.isLoading,
      'pickedImagePath': instance.pickedImagePath,
      'vacancies': instance.vacancies,
      'joinRequests': instance.joinRequests,
    };
