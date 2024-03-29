// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppUserImpl _$$AppUserImplFromJson(Map<String, dynamic> json) =>
    _$AppUserImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      ghAccessToken: json['gh_access_token'] as String?,
      ghTokenExpiry: json['gh_token_expiry'] as String?,
      skills:
          (json['skills'] as List<dynamic>?)?.map((e) => e as String).toList(),
      hackathonModeInterests: json['hackathon_mode_interests'] as String?,
      currentLocation: json['current_location'] as String?,
      teamMemberPreferredLocation:
          json['teammate_preferred_location'] as String?,
      hackathonThemeInterests:
          (json['hackathon_theme_interests'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      bio: json['bio'] as String?,
      collegeName: json['college_name'] as String?,
      graduationYear: json['graduation_year'] as String?,
      course: json['course'] as String?,
      teamId: json['team_id'] as String?,
      avatar: json['avatar'] as String?,
      likes:
          (json['likes'] as List<dynamic>?)?.map((e) => e as String).toList(),
      dislikes: (json['dislikes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      matchRequests: (json['match_requests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      matches:
          (json['matches'] as List<dynamic>?)?.map((e) => e as String).toList(),
      chatRooms: (json['chat_rooms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$AppUserImplToJson(_$AppUserImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('phone', instance.phone);
  val['gh_access_token'] = instance.ghAccessToken;
  val['gh_token_expiry'] = instance.ghTokenExpiry;
  writeNotNull('skills', instance.skills);
  val['hackathon_mode_interests'] = instance.hackathonModeInterests;
  val['current_location'] = instance.currentLocation;
  val['teammate_preferred_location'] = instance.teamMemberPreferredLocation;
  val['hackathon_theme_interests'] = instance.hackathonThemeInterests;
  val['bio'] = instance.bio;
  val['college_name'] = instance.collegeName;
  val['graduation_year'] = instance.graduationYear;
  val['course'] = instance.course;
  val['team_id'] = instance.teamId;
  val['avatar'] = instance.avatar;
  val['likes'] = instance.likes;
  val['dislikes'] = instance.dislikes;
  val['match_requests'] = instance.matchRequests;
  val['matches'] = instance.matches;
  val['chat_rooms'] = instance.chatRooms;
  return val;
}
