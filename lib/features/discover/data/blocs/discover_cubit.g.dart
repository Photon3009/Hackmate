// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscoverStateImpl _$$DiscoverStateImplFromJson(Map<String, dynamic> json) =>
    _$DiscoverStateImpl(
      profiles: (json['profiles'] as List<dynamic>?)
              ?.map((e) => AppUser.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      matches: (json['matches'] as List<dynamic>?)
              ?.map((e) => AppUser.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      requests: (json['requests'] as List<dynamic>?)
              ?.map((e) => AppUser.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$DiscoverStateImplToJson(_$DiscoverStateImpl instance) =>
    <String, dynamic>{
      'profiles': instance.profiles,
      'matches': instance.matches,
      'requests': instance.requests,
      'isLoading': instance.isLoading,
    };
