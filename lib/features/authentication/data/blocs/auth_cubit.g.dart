// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthStateImpl _$$AuthStateImplFromJson(Map<String, dynamic> json) =>
    _$AuthStateImpl(
      user: json['user'] == null
          ? null
          : AppUser.fromJson(json['user'] as Map<String, dynamic>),
      isOtpAvailable: json['isOtpAvailable'] as bool? ?? false,
      phoneUserId: json['phoneUserId'] as String?,
      pickedImagePath: json['pickedImagePath'] as String?,
    );

Map<String, dynamic> _$$AuthStateImplToJson(_$AuthStateImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'isOtpAvailable': instance.isOtpAvailable,
      'phoneUserId': instance.phoneUserId,
      'pickedImagePath': instance.pickedImagePath,
    };
