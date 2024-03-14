// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatRoomImpl _$$ChatRoomImplFromJson(Map<String, dynamic> json) =>
    _$ChatRoomImpl(
      chatRoomId: json[r'$id'] as String,
      senderImage: json['senderImage'] as String,
      senderName: json['senderName'] as String,
    );

Map<String, dynamic> _$$ChatRoomImplToJson(_$ChatRoomImpl instance) =>
    <String, dynamic>{
      r'$id': instance.chatRoomId,
      'senderImage': instance.senderImage,
      'senderName': instance.senderName,
    };
