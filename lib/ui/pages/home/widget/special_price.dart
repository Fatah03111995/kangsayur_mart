import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kangsayur_mart/core/data/dummy.dart';
import 'package:kangsayur_mart/core/models/product_model.dart';
import 'package:kangsayur_mart/core/themes/my_theme.dart';
import 'package:kangsayur_mart/core/themes/text_styles.dart';
import 'package:kangsayur_mart/ui/widgets/card_product_sale.dart';

class SpecialPrice extends StatelessWidget {
  const SpecialPrice({super.key});
  @override
  Widget build(BuildContext context) {
    List<ProductModel> data =
        Dummy.productsList.where((product) => product.isOnSale).toList();
    return SliverToBoxAdapter(
      child: Container(
        height: 200.h,
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.h),
        margin: EdgeInsets.symmetric(horizontal: 6.h),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Theme.of(context).myColorContainer.withOpacity(0.7),
          borderRadius: BorderRadius.circular(20.w),
        ),
        child: Column(
          children: [
            Text(
              'Special Price For You 👇',
              style: TextStyles.sm.copyWith(
                  color: Theme.of(context).myColorTxt,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.h),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return CardProductSale(
                      product: data[index],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
