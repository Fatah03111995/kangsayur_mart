import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kangsayur_mart/core/themes/my_color.dart';
import 'package:kangsayur_mart/core/themes/my_theme.dart';
import 'package:kangsayur_mart/core/themes/text_styles.dart';
import 'package:kangsayur_mart/ui/generated_asset/assets.gen.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      titleAlignment: ListTileTitleAlignment.center,
      tileColor: Theme.of(context).myColorContainer,
      leading: SizedBox(
        width: 50.w,
        height: 50.w,
        child: Assets.images.category.nuts.image(fit: BoxFit.cover),
      ),
      title: Text(
        'Kaaaacang ijooo',
        textAlign: TextAlign.center,
        style: TextStyles.sm.copyWith(
            fontWeight: FontWeight.bold, color: Theme.of(context).myColorTxt),
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.add),
          ),
          Container(
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.w),
                color: MyColor.blue4),
            child: Text(
              '1',
              textAlign: TextAlign.center,
              style: TextStyles.sm.copyWith(color: Colors.black),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.minus),
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Icons.delete),
      ),
    );
  }
}
