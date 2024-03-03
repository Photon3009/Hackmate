// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) {
  return _BannerModel.fromJson(json);
}

/// @nodoc
mixin _$BannerModel {
  @JsonKey(name: '\$id')
  String get id => throw _privateConstructorUsedError;
  String get heading => throw _privateConstructorUsedError;
  @JsonKey(name: 'subheading')
  String get subHeading => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imgUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'on_click')
  String? get onClick => throw _privateConstructorUsedError;
  @JsonKey(name: 'button_text')
  String get buttonText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerModelCopyWith<BannerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerModelCopyWith<$Res> {
  factory $BannerModelCopyWith(
          BannerModel value, $Res Function(BannerModel) then) =
      _$BannerModelCopyWithImpl<$Res, BannerModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '\$id') String id,
      String heading,
      @JsonKey(name: 'subheading') String subHeading,
      @JsonKey(name: 'image_url') String imgUrl,
      @JsonKey(name: 'on_click') String? onClick,
      @JsonKey(name: 'button_text') String buttonText});
}

/// @nodoc
class _$BannerModelCopyWithImpl<$Res, $Val extends BannerModel>
    implements $BannerModelCopyWith<$Res> {
  _$BannerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? heading = null,
    Object? subHeading = null,
    Object? imgUrl = null,
    Object? onClick = freezed,
    Object? buttonText = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      heading: null == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as String,
      subHeading: null == subHeading
          ? _value.subHeading
          : subHeading // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      onClick: freezed == onClick
          ? _value.onClick
          : onClick // ignore: cast_nullable_to_non_nullable
              as String?,
      buttonText: null == buttonText
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerModelImplCopyWith<$Res>
    implements $BannerModelCopyWith<$Res> {
  factory _$$BannerModelImplCopyWith(
          _$BannerModelImpl value, $Res Function(_$BannerModelImpl) then) =
      __$$BannerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '\$id') String id,
      String heading,
      @JsonKey(name: 'subheading') String subHeading,
      @JsonKey(name: 'image_url') String imgUrl,
      @JsonKey(name: 'on_click') String? onClick,
      @JsonKey(name: 'button_text') String buttonText});
}

/// @nodoc
class __$$BannerModelImplCopyWithImpl<$Res>
    extends _$BannerModelCopyWithImpl<$Res, _$BannerModelImpl>
    implements _$$BannerModelImplCopyWith<$Res> {
  __$$BannerModelImplCopyWithImpl(
      _$BannerModelImpl _value, $Res Function(_$BannerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? heading = null,
    Object? subHeading = null,
    Object? imgUrl = null,
    Object? onClick = freezed,
    Object? buttonText = null,
  }) {
    return _then(_$BannerModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      heading: null == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as String,
      subHeading: null == subHeading
          ? _value.subHeading
          : subHeading // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      onClick: freezed == onClick
          ? _value.onClick
          : onClick // ignore: cast_nullable_to_non_nullable
              as String?,
      buttonText: null == buttonText
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannerModelImpl implements _BannerModel {
  const _$BannerModelImpl(
      {@JsonKey(name: '\$id') required this.id,
      required this.heading,
      @JsonKey(name: 'subheading') required this.subHeading,
      @JsonKey(name: 'image_url') required this.imgUrl,
      @JsonKey(name: 'on_click') this.onClick,
      @JsonKey(name: 'button_text') required this.buttonText});

  factory _$BannerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerModelImplFromJson(json);

  @override
  @JsonKey(name: '\$id')
  final String id;
  @override
  final String heading;
  @override
  @JsonKey(name: 'subheading')
  final String subHeading;
  @override
  @JsonKey(name: 'image_url')
  final String imgUrl;
  @override
  @JsonKey(name: 'on_click')
  final String? onClick;
  @override
  @JsonKey(name: 'button_text')
  final String buttonText;

  @override
  String toString() {
    return 'BannerModel(id: $id, heading: $heading, subHeading: $subHeading, imgUrl: $imgUrl, onClick: $onClick, buttonText: $buttonText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.heading, heading) || other.heading == heading) &&
            (identical(other.subHeading, subHeading) ||
                other.subHeading == subHeading) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            (identical(other.onClick, onClick) || other.onClick == onClick) &&
            (identical(other.buttonText, buttonText) ||
                other.buttonText == buttonText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, heading, subHeading, imgUrl, onClick, buttonText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerModelImplCopyWith<_$BannerModelImpl> get copyWith =>
      __$$BannerModelImplCopyWithImpl<_$BannerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerModelImplToJson(
      this,
    );
  }
}

abstract class _BannerModel implements BannerModel {
  const factory _BannerModel(
          {@JsonKey(name: '\$id') required final String id,
          required final String heading,
          @JsonKey(name: 'subheading') required final String subHeading,
          @JsonKey(name: 'image_url') required final String imgUrl,
          @JsonKey(name: 'on_click') final String? onClick,
          @JsonKey(name: 'button_text') required final String buttonText}) =
      _$BannerModelImpl;

  factory _BannerModel.fromJson(Map<String, dynamic> json) =
      _$BannerModelImpl.fromJson;

  @override
  @JsonKey(name: '\$id')
  String get id;
  @override
  String get heading;
  @override
  @JsonKey(name: 'subheading')
  String get subHeading;
  @override
  @JsonKey(name: 'image_url')
  String get imgUrl;
  @override
  @JsonKey(name: 'on_click')
  String? get onClick;
  @override
  @JsonKey(name: 'button_text')
  String get buttonText;
  @override
  @JsonKey(ignore: true)
  _$$BannerModelImplCopyWith<_$BannerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
