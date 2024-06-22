/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/app1.png
  AssetGenImage get app1 => const AssetGenImage('assets/images/app1.png');

  /// File path: assets/images/arvr.png
  AssetGenImage get arvr => const AssetGenImage('assets/images/arvr.png');

  /// File path: assets/images/blockd.png
  AssetGenImage get blockd => const AssetGenImage('assets/images/blockd.png');

  /// File path: assets/images/cloud.jpg
  AssetGenImage get cloud => const AssetGenImage('assets/images/cloud.jpg');

  /// File path: assets/images/connected_world.png
  AssetGenImage get connectedWorld =>
      const AssetGenImage('assets/images/connected_world.png');

  /// File path: assets/images/dev_profiles.png
  AssetGenImage get devProfiles =>
      const AssetGenImage('assets/images/dev_profiles.png');

  /// File path: assets/images/empty_box.png
  AssetGenImage get emptyBox =>
      const AssetGenImage('assets/images/empty_box.png');

  /// File path: assets/images/enter_details.png
  AssetGenImage get enterDetails =>
      const AssetGenImage('assets/images/enter_details.png');

  /// File path: assets/images/enter_otp.png
  AssetGenImage get enterOtp =>
      const AssetGenImage('assets/images/enter_otp.png');

  /// File path: assets/images/escape.png
  AssetGenImage get escape => const AssetGenImage('assets/images/escape.png');

  /// File path: assets/images/hackmate_logo.png
  AssetGenImage get hackmateLogo =>
      const AssetGenImage('assets/images/hackmate_logo.png');

  /// File path: assets/images/hand_shake.png
  AssetGenImage get handShake =>
      const AssetGenImage('assets/images/hand_shake.png');

  /// File path: assets/images/joy.png
  AssetGenImage get joy => const AssetGenImage('assets/images/joy.png');

  /// File path: assets/images/keyboard.png
  AssetGenImage get keyboard =>
      const AssetGenImage('assets/images/keyboard.png');

  /// File path: assets/images/login.png
  AssetGenImage get login => const AssetGenImage('assets/images/login.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/mlai.png
  AssetGenImage get mlai => const AssetGenImage('assets/images/mlai.png');

  /// File path: assets/images/pair_programming.png
  AssetGenImage get pairProgramming =>
      const AssetGenImage('assets/images/pair_programming.png');

  /// File path: assets/images/swipe_profiles.png
  AssetGenImage get swipeProfiles =>
      const AssetGenImage('assets/images/swipe_profiles.png');

  /// File path: assets/images/vector_bg.svg
  SvgGenImage get vectorBg => const SvgGenImage('assets/images/vector_bg.svg');

  /// File path: assets/images/webd.png
  AssetGenImage get webd => const AssetGenImage('assets/images/webd.png');

  /// List of all assets
  List<dynamic> get values => [
        app1,
        arvr,
        blockd,
        cloud,
        connectedWorld,
        devProfiles,
        emptyBox,
        enterDetails,
        enterOtp,
        escape,
        hackmateLogo,
        handShake,
        joy,
        keyboard,
        login,
        logo,
        mlai,
        pairProgramming,
        swipeProfiles,
        vectorBg,
        webd
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
