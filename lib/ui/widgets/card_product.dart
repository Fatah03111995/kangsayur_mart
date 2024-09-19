import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kangsayur_mart/core/bloc/wishlist/wishlist_bloc.dart';
import 'package:kangsayur_mart/core/models/product_model.dart';
import 'package:kangsayur_mart/core/themes/my_color.dart';
import 'package:kangsayur_mart/core/themes/my_theme.dart';
import 'package:kangsayur_mart/core/themes/text_styles.dart';
import 'package:kangsayur_mart/ui/widgets/add_to_cart.dart';
import 'package:kangsayur_mart/ui/widgets/rounded_rectangle_button.dart';

class CardProduct extends StatelessWidget {
  final ProductModel product;
  const CardProduct({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    bool isOutOfStock = product.stock == 0;
    return SizedBox(
      width: 170,
      child: Card(
        clipBehavior: Clip.hardEdge,
        color: Theme.of(context).myColorContainer,
        child: Column(
          children: [
            Container(
              width: 170,
              height: 90,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(product.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              child: isOutOfStock
                  ? Container(
                      width: 170,
                      height: 90,
                      alignment: Alignment.center,
                      color: Colors.black.withOpacity(0.5),
                      child: Text(
                        'Out Of Stock',
                        style: TextStyles.sm.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    )
                  : null,
            ),
            // Image.asset(
            //   product.imageUrl,
            //   width: 170,
            //   height: 90,
            //   fit: BoxFit.cover,
            // ),
            SizedBox(height: 5.h),
            Text(
              product.name,
              textAlign: TextAlign.center,
              style: TextStyles.sm.copyWith(
                  color: Theme.of(context).myColorTxt,
                  fontWeight: FontWeight.bold),
            ),
            Divider(
              indent: 10.w,
              endIndent: 10.w,
              thickness: 1.5.sp,
              color: Theme.of(context).myColorTxt.withOpacity(0.1),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (product.isOnSale)
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Rp ${product.price},- / ${product.unit}',
                          style: TextStyles.sm.copyWith(
                            color:
                                Theme.of(context).myColorTxt.withOpacity(0.2),
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        Text(
                          'Rp ${product.salePrice},- / ${product.unit}',
                          style: TextStyles.sm.copyWith(
                              color: Theme.of(context).myColorTxt,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  if (!product.isOnSale)
                    Text(
                      'Rp ${product.price},- / ${product.unit}',
                      style: TextStyles.sm.copyWith(
                          color: Theme.of(context).myColorTxt,
                          fontWeight: FontWeight.w700),
                    ),
                ],
              ),
            ),
            SizedBox(height: 5.h),
            Row(
              children: [
                Expanded(
                  child: RoundedRectangleButton(
                      height: 30.h,
                      onTap: isOutOfStock
                          ? null
                          : () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return AddToCart(
                                      product: product,
                                    );
                                  });
                            },
                      color: MyColor.blue1,
                      child: const Icon(
                        CupertinoIcons.cart,
                        color: Colors.white,
                      )),
                ),
                Expanded(
                  child: RoundedRectangleButton(
                    height: 30.h,
                    onTap: () {
                      context
                          .read<WishlistBloc>()
                          .add(Toggle(product: product));
                    },
                    color: Theme.of(context).myColorContainer,
                    child:
                        BlocSelector<WishlistBloc, WishlistState, List<String>>(
                      selector: (state) {
                        if (state is WishlistSuccessed) {
                          return state.productIds;
                        } else {
                          return [];
                        }
                      },
                      builder: (context, wishlistIds) {
                        return Icon(
                          Icons.favorite,
                          color: wishlistIds.contains(product.productId)
                              ? Colors.red
                              : Colors.grey,
                        );
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
