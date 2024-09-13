import 'package:kangsayur_mart/ui/generated_asset/assets.gen.dart';

enum Categories {
  fruits,
  vegtables,
  grains,
  nuts,
  spices,
}

Map<Categories, AssetGenImage> dataCategories = {
  Categories.fruits: Assets.images.category.fruits,
  Categories.grains: Assets.images.category.grains,
  Categories.nuts: Assets.images.category.nuts,
  Categories.spices: Assets.images.category.spices,
  Categories.vegtables: Assets.images.category.veg,
};
