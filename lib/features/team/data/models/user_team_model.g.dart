// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_team_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserTeamImpl _$$UserTeamImplFromJson(Map<String, dynamic> json) =>
    _$UserTeamImpl(
      name: json['name'] as String,
      id: json[r'$id'] as String,
      memberIDs:
          (json['members'] as List<dynamic>?)?.map((e) => e as String).toList(),
      memberRoles:
          _memberRolesFromJson(json, 'member_roles') as Map<String, dynamic>?,
      admin: json['admin'] as String,
    );

Map<String, dynamic> _$$UserTeamImplToJson(_$UserTeamImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      r'$id': instance.id,
      'members': instance.memberIDs,
      'member_roles': jsonEncode(instance.memberRoles),
      'admin': instance.admin,
    };
