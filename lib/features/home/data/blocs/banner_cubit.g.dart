// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannerStateImpl _$$BannerStateImplFromJson(Map<String, dynamic> json) =>
    _$BannerStateImpl(
      models: (json['models'] as List<dynamic>?)
              ?.map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$BannerStateImplToJson(_$BannerStateImpl instance) =>
    <String, dynamic>{
      'models': instance.models,
      'isLoading': instance.isLoading,
    };
