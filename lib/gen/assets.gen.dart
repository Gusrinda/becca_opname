/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/home.webp
  AssetGenImage get home => const AssetGenImage('assets/icons/home.webp');

  /// File path: assets/icons/notif.webp
  AssetGenImage get notif => const AssetGenImage('assets/icons/notif.webp');

  /// File path: assets/icons/prpofile.webp
  AssetGenImage get prpofile =>
      const AssetGenImage('assets/icons/prpofile.webp');

  /// File path: assets/icons/spk.webp
  AssetGenImage get spk => const AssetGenImage('assets/icons/spk.webp');

  /// List of all assets
  List<AssetGenImage> get values => [home, notif, prpofile, spk];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/berhasil.webp
  AssetGenImage get berhasil =>
      const AssetGenImage('assets/images/berhasil.webp');

  /// File path: assets/images/bg_merah.png
  AssetGenImage get bgMerah =>
      const AssetGenImage('assets/images/bg_merah.png');

  /// File path: assets/images/confirmation.webp
  AssetGenImage get confirmation =>
      const AssetGenImage('assets/images/confirmation.webp');

  /// File path: assets/images/form.webp
  AssetGenImage get form => const AssetGenImage('assets/images/form.webp');

  /// File path: assets/images/gagal.webp
  AssetGenImage get gagal => const AssetGenImage('assets/images/gagal.webp');

  /// File path: assets/images/login.webp
  AssetGenImage get login => const AssetGenImage('assets/images/login.webp');

  /// File path: assets/images/logo_becca.png
  AssetGenImage get logoBecca =>
      const AssetGenImage('assets/images/logo_becca.png');

  /// File path: assets/images/logo_becca_sq.png
  AssetGenImage get logoBeccaSq =>
      const AssetGenImage('assets/images/logo_becca_sq.png');

  /// File path: assets/images/profile.webp
  AssetGenImage get profile =>
      const AssetGenImage('assets/images/profile.webp');

  /// List of all assets
  List<AssetGenImage> get values => [
        berhasil,
        bgMerah,
        confirmation,
        form,
        gagal,
        login,
        logoBecca,
        logoBeccaSq,
        profile
      ];
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
