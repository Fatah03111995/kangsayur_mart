import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kangsayur_mart/core/themes/my_color.dart';
import 'package:kangsayur_mart/ui/generated_asset/assets.gen.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    List<AssetGenImage> listLandingAsset = [
      Assets.images.landing.buyOnLaptop,
      Assets.images.landing.buyThrough,
      Assets.images.landing.buyfood,
      Assets.images.landing.groceryCart,
      Assets.images.landing.store,
      Assets.images.landing.vergtablebg,
    ];
    return SliverToBoxAdapter(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 130.h,
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return listLandingAsset[index].image(fit: BoxFit.cover);
          },
          itemCount: listLandingAsset.length,
          viewportFraction: 1,
          scale: 0.9,
          pagination: SwiperPagination(
              builder: DotSwiperPaginationBuilder(
            activeColor: MyColor.blue1,
          )),
          autoplay: true,
        ),
      ),
    );
  }
}
