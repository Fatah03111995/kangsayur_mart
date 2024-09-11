import 'package:kangsayur_mart/ui/generated_asset/assets.gen.dart';

enum Categories {
  fruits,
  vegtables,
  grains,
  nuts,
  spices,
}

Map<Categories, AssetGenImage> dataCategories = {
  Categories.fruits: Assets.images.cat.fruits,
  Categories.grains: Assets.images.cat.grains,
  Categories.nuts: Assets.images.cat.nuts,
  Categories.spices: Assets.images.cat.spices,
  Categories.vegtables: Assets.images.cat.veg,
};
