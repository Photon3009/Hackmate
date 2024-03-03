// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hackathon_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HackathonStateImpl _$$HackathonStateImplFromJson(Map<String, dynamic> json) =>
    _$HackathonStateImpl(
      hackathons: (json['hackathons'] as List<dynamic>?)
              ?.map((e) => HackathonModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$HackathonStateImplToJson(
        _$HackathonStateImpl instance) =>
    <String, dynamic>{
      'hackathons': instance.hackathons,
      'isLoading': instance.isLoading,
    };
