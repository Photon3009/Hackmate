// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannerModelImpl _$$BannerModelImplFromJson(Map<String, dynamic> json) =>
    _$BannerModelImpl(
      id: json[r'$id'] as String,
      heading: json['heading'] as String,
      subHeading: json['subheading'] as String,
      imgUrl: json['image_url'] as String,
      onClick: json['on_click'] as String?,
      buttonText: json['button_text'] as String,
    );

Map<String, dynamic> _$$BannerModelImplToJson(_$BannerModelImpl instance) =>
    <String, dynamic>{
      r'$id': instance.id,
      'heading': instance.heading,
      'subheading': instance.subHeading,
      'image_url': instance.imgUrl,
      'on_click': instance.onClick,
      'button_text': instance.buttonText,
    };
