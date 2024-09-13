import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kangsayur_mart/core/themes/my_color.dart';
import 'package:kangsayur_mart/core/themes/my_theme.dart';
import 'package:kangsayur_mart/core/themes/text_styles.dart';
import 'package:kangsayur_mart/ui/generated_asset/assets.gen.dart';
import 'package:kangsayur_mart/ui/widgets/rounded_rectangle_button.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      child: Card(
        color: Theme.of(context).myColorContainer,
        child: Column(
          children: [
            Assets.images.category.nuts.image(height: 90, fit: BoxFit.cover),
            Text(
              'Bijii Kacang Ijo Guys, Mantap pokonya',
              textAlign: TextAlign.center,
              style: TextStyles.s.copyWith(
                  color: Theme.of(context).myColorTxt,
                  fontWeight: FontWeight.w400),
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
                  Text(
                    'Rp 10.000,- / kg',
                    style: TextStyles.sm.copyWith(
                      color: Theme.of(context).myColorTxt.withOpacity(0.2),
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  Text(
                    'Rp 5.000,- / kg',
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
                      onTap: () {},
                      color: MyColor.blue1,
                      child: const Icon(
                        CupertinoIcons.cart,
                        color: Colors.white,
                      )),
                ),
                Expanded(
                  child: RoundedRectangleButton(
                    height: 30.h,
                    onTap: () {},
                    color: Theme.of(context).myColorContainer,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.grey.withOpacity(0.5),
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
