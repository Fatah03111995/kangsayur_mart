import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kangsayur_mart/core/themes/my_color.dart';
import 'package:kangsayur_mart/core/themes/my_theme.dart';
import 'package:kangsayur_mart/core/themes/text_styles.dart';
import 'package:kangsayur_mart/ui/generated_asset/assets.gen.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).myColorScaffoldBg,
      appBar: AppBar(
        backgroundColor: Theme.of(context).myColorScaffoldBg,
        centerTitle: true,
        title: Text(
          'Your Cart',
          style: TextStyles.ml
              .copyWith(color: MyColor.blue1, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // CartItem(),
            Assets.images.cart.image(width: 200),
            SizedBox(height: 10.h),
            Text(
              'There is no data here',
              style: TextStyles.ml.copyWith(
                  color: Theme.of(context).myColorTxt,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
