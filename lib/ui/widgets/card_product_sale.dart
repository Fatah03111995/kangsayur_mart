import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kangsayur_mart/core/themes/my_color.dart';
import 'package:kangsayur_mart/core/themes/my_theme.dart';
import 'package:kangsayur_mart/core/themes/text_styles.dart';
import 'package:kangsayur_mart/ui/generated_asset/assets.gen.dart';

class CardProductSale extends StatelessWidget {
  const CardProductSale({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      child: Card(
        color: Theme.of(context).myColorContainer,
        child: Column(
          children: [
            Assets.images.category.nuts.image(height: 70, fit: BoxFit.cover),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    indent: 6.w,
                    endIndent: 6.w,
                    color: Theme.of(context).myColorTxt.withOpacity(0.3),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.white),
                      shape: WidgetStatePropertyAll(CircleBorder())),
                  child: Icon(
                    CupertinoIcons.add,
                    color: MyColor.blue1,
                  ),
                ),
                Expanded(
                  child: Divider(
                    indent: 6.w,
                    endIndent: 6.w,
                    color: Theme.of(context).myColorTxt.withOpacity(0.3),
                  ),
                ),
              ],
            ),
            Text(
              'Rp 10.000,- / kg',
              style: TextStyles.sm.copyWith(
                color: Theme.of(context).myColorTxt.withOpacity(0.2),
                decoration: TextDecoration.lineThrough,
                decorationThickness: 2,
                decorationColor: Theme.of(context).myColorTxt.withOpacity(0.2),
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
    );
  }
}
