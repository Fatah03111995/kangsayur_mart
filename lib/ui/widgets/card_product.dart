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
            Text('Bijii Kacang Ijo Guys'),
            Expanded(
              child: Stack(
                children: [
                  Text(
                    'Rp 10.000,- ',
                    style: TextStyles.sm.copyWith(
                      color: Theme.of(context).myColorTxt.withOpacity(0.2),
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  Positioned(
                      top: 10,
                      left: 15,
                      child: Text(
                        'Rp 5.000,-',
                        style: TextStyles.sm.copyWith(
                            color: Colors.red, fontWeight: FontWeight.w700),
                      )),
                ],
              ),
            ),
            SizedBox(height: 5.h),
            RoundedRectangleButton(
                height: 30.h,
                onTap: () {},
                child: Text(
                  'ORDER',
                  style: TextStyles.s.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                color: MyColor.blue1)
          ],
        ),
      ),
    );
  }
}
