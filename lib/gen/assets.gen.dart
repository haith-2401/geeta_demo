/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Cart icon.png
  AssetGenImage get cartIcon =>
      const AssetGenImage('assets/icons/Cart icon.png');

  /// File path: assets/icons/Favorite.png
  AssetGenImage get favorite =>
      const AssetGenImage('assets/icons/Favorite.png');

  /// File path: assets/icons/Menu.png
  AssetGenImage get menu => const AssetGenImage('assets/icons/Menu.png');

  /// File path: assets/icons/Search Icon.png
  AssetGenImage get searchIcon =>
      const AssetGenImage('assets/icons/Search Icon.png');

  /// File path: assets/icons/full_view_ic.png
  AssetGenImage get fullViewIc =>
      const AssetGenImage('assets/icons/full_view_ic.png');

  /// File path: assets/icons/grid_view_ic.png
  AssetGenImage get gridViewIc =>
      const AssetGenImage('assets/icons/grid_view_ic.png');

  /// File path: assets/icons/home_black_24dp.svg
  String get homeBlack24dp => 'assets/icons/home_black_24dp.svg';

  /// File path: assets/icons/notification.png
  AssetGenImage get notification =>
      const AssetGenImage('assets/icons/notification.png');

  /// File path: assets/icons/sort_tool_ic.png
  AssetGenImage get sortToolIc =>
      const AssetGenImage('assets/icons/sort_tool_ic.png');
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/authentication_background.png
  AssetGenImage get authenticationBackground =>
      const AssetGenImage('assets/images/authentication_background.png');

  /// File path: assets/images/authentication_method_bg.png
  AssetGenImage get authenticationMethodBg =>
      const AssetGenImage('assets/images/authentication_method_bg.png');

  /// File path: assets/images/back_arrow.png
  AssetGenImage get backArrow =>
      const AssetGenImage('assets/images/back_arrow.png');

  /// File path: assets/images/demo_product.png
  AssetGenImage get demoProduct =>
      const AssetGenImage('assets/images/demo_product.png');

  /// File path: assets/images/getting_started.png
  AssetGenImage get gettingStartedPng =>
      const AssetGenImage('assets/images/getting_started.png');

  /// File path: assets/images/getting_started.svg
  String get gettingStartedSvg => 'assets/images/getting_started.svg';

  /// File path: assets/images/ic_avatar.png
  AssetGenImage get icAvatar =>
      const AssetGenImage('assets/images/ic_avatar.png');

  /// File path: assets/images/ic_envelope.png
  AssetGenImage get icEnvelope =>
      const AssetGenImage('assets/images/ic_envelope.png');

  /// File path: assets/images/ic_error _circle_black.png
  AssetGenImage get icErrorCircleBlack =>
      const AssetGenImage('assets/images/ic_error _circle_black.png');

  /// File path: assets/images/ic_error_circle_violet.png
  AssetGenImage get icErrorCircleViolet =>
      const AssetGenImage('assets/images/ic_error_circle_violet.png');

  /// File path: assets/images/ic_lock.png
  AssetGenImage get icLock => const AssetGenImage('assets/images/ic_lock.png');

  /// File path: assets/images/ic_logo_splash.png
  AssetGenImage get icLogoSplash =>
      const AssetGenImage('assets/images/ic_logo_splash.png');

  /// File path: assets/images/icon_app.png
  AssetGenImage get iconApp =>
      const AssetGenImage('assets/images/icon_app.png');

  /// File path: assets/images/round_home_black_24dp.png
  AssetGenImage get roundHomeBlack24dp =>
      const AssetGenImage('assets/images/round_home_black_24dp.png');

  /// File path: assets/images/shopping_bags.png
  AssetGenImage get shoppingBags =>
      const AssetGenImage('assets/images/shopping_bags.png');
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
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

  String get path => _assetName;

  String get keyName => _assetName;
}
