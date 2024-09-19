import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kangsayur_mart/core/bloc/wishlist/wishlist_bloc.dart';
import 'package:kangsayur_mart/core/themes/my_color.dart';
import 'package:kangsayur_mart/core/themes/my_theme.dart';
import 'package:kangsayur_mart/core/themes/text_styles.dart';
import 'package:kangsayur_mart/ui/generated_asset/assets.gen.dart';
import 'package:kangsayur_mart/ui/widgets/card_product.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).myColorScaffoldBg,
      appBar: AppBar(
        backgroundColor: Theme.of(context).myColorScaffoldBg,
        centerTitle: true,
        title: Text(
          'Wishlist',
          style: TextStyles.ml
              .copyWith(color: MyColor.blue1, fontWeight: FontWeight.bold),
        ),
      ),
      body: BlocBuilder<WishlistBloc, WishlistState>(
        builder: (context, state) {
          if (state is WishlistLoading) {
            return Center(
              child: CircularProgressIndicator(
                color: MyColor.blue1,
              ),
            );
          }

          if (state is WishlistSuccessed && state.wishlist.isNotEmpty) {
            return GridView.builder(
              itemCount: state.wishlist.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                childAspectRatio: 0.7,
              ),
              itemBuilder: (context, index) {
                return CardProduct(
                  product: state.wishlist[index],
                );
              },
            );
          }

          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Assets.images.box.image(width: 200),
                SizedBox(height: 10.h),
                Text(
                  'There is no data here',
                  style: TextStyles.ml.copyWith(
                      color: Theme.of(context).myColorTxt,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
