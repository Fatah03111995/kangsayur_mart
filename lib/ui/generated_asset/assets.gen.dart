/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/add-to-cart.png
  AssetGenImage get addToCart =>
      const AssetGenImage('assets/images/add-to-cart.png');

  /// File path: assets/images/basket.png
  AssetGenImage get basket => const AssetGenImage('assets/images/basket.png');

  /// File path: assets/images/box.png
  AssetGenImage get box => const AssetGenImage('assets/images/box.png');

  /// File path: assets/images/cart.png
  AssetGenImage get cart => const AssetGenImage('assets/images/cart.png');

  /// Directory path: assets/images/category
  $AssetsImagesCategoryGen get category => const $AssetsImagesCategoryGen();

  /// File path: assets/images/google.png
  AssetGenImage get google => const AssetGenImage('assets/images/google.png');

  /// File path: assets/images/history.png
  AssetGenImage get history => const AssetGenImage('assets/images/history.png');

  /// Directory path: assets/images/landing
  $AssetsImagesLandingGen get landing => const $AssetsImagesLandingGen();

  /// Directory path: assets/images/offers
  $AssetsImagesOffersGen get offers => const $AssetsImagesOffersGen();

  /// File path: assets/images/warning-sign.png
  AssetGenImage get warningSign =>
      const AssetGenImage('assets/images/warning-sign.png');

  /// File path: assets/images/wishlist.png
  AssetGenImage get wishlist =>
      const AssetGenImage('assets/images/wishlist.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [addToCart, basket, box, cart, google, history, warningSign, wishlist];
}

class $AssetsImagesCategoryGen {
  const $AssetsImagesCategoryGen();

  /// File path: assets/images/category/Spinach.png
  AssetGenImage get spinach =>
      const AssetGenImage('assets/images/category/Spinach.png');

  /// File path: assets/images/category/fruits.png
  AssetGenImage get fruits =>
      const AssetGenImage('assets/images/category/fruits.png');

  /// File path: assets/images/category/grains.png
  AssetGenImage get grains =>
      const AssetGenImage('assets/images/category/grains.png');

  /// File path: assets/images/category/nuts.png
  AssetGenImage get nuts =>
      const AssetGenImage('assets/images/category/nuts.png');

  /// File path: assets/images/category/spices.png
  AssetGenImage get spices =>
      const AssetGenImage('assets/images/category/spices.png');

  /// File path: assets/images/category/veg.png
  AssetGenImage get veg =>
      const AssetGenImage('assets/images/category/veg.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [spinach, fruits, grains, nuts, spices, veg];
}

class $AssetsImagesLandingGen {
  const $AssetsImagesLandingGen();

  /// File path: assets/images/landing/buy-on-laptop.jpg
  AssetGenImage get buyOnLaptop =>
      const AssetGenImage('assets/images/landing/buy-on-laptop.jpg');

  /// File path: assets/images/landing/buy-through.png
  AssetGenImage get buyThrough =>
      const AssetGenImage('assets/images/landing/buy-through.png');

  /// File path: assets/images/landing/buyfood.jpg
  AssetGenImage get buyfood =>
      const AssetGenImage('assets/images/landing/buyfood.jpg');

  /// File path: assets/images/landing/grocery-cart.jpg
  AssetGenImage get groceryCart =>
      const AssetGenImage('assets/images/landing/grocery-cart.jpg');

  /// File path: assets/images/landing/store.jpg
  AssetGenImage get store =>
      const AssetGenImage('assets/images/landing/store.jpg');

  /// File path: assets/images/landing/vergtablebg.jpg
  AssetGenImage get vergtablebg =>
      const AssetGenImage('assets/images/landing/vergtablebg.jpg');

  /// List of all assets
  List<AssetGenImage> get values =>
      [buyOnLaptop, buyThrough, buyfood, groceryCart, store, vergtablebg];
}

class $AssetsImagesOffersGen {
  const $AssetsImagesOffersGen();

  /// File path: assets/images/offers/Offer1.jpg
  AssetGenImage get offer1 =>
      const AssetGenImage('assets/images/offers/Offer1.jpg');

  /// File path: assets/images/offers/Offer2.jpg
  AssetGenImage get offer2 =>
      const AssetGenImage('assets/images/offers/Offer2.jpg');

  /// File path: assets/images/offers/Offer3.jpg
  AssetGenImage get offer3 =>
      const AssetGenImage('assets/images/offers/Offer3.jpg');

  /// File path: assets/images/offers/Offer4.jpg
  AssetGenImage get offer4 =>
      const AssetGenImage('assets/images/offers/Offer4.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [offer1, offer2, offer3, offer4];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
