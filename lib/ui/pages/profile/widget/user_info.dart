import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kangsayur_mart/core/models/item_menu.dart';
import 'package:kangsayur_mart/core/themes/my_color.dart';
import 'package:kangsayur_mart/core/themes/my_theme.dart';
import 'package:kangsayur_mart/core/themes/text_styles.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    List<ItemMenu> items = [
      const ItemMenu(name: 'Address', icon: CupertinoIcons.pin),
      const ItemMenu(name: 'Password', icon: CupertinoIcons.lock),
    ];
    return Card(
      child: Column(
        children: [
          SizedBox(height: 30.h),
          Container(
            width: 70.w,
            height: 70.w,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: MyColor.blue1,
            ),
          ),
          SizedBox(height: 10.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Abdul Fatah',
                style:
                    TextStyles.ml.copyWith(color: Theme.of(context).myColorTxt),
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //------------E MONEY
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                    decoration: BoxDecoration(
                        color: Theme.of(context).myColorPrimary,
                        borderRadius: BorderRadius.circular(10.w)),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.account_balance_wallet,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          'Rp 10.000,-',
                          style: TextStyles.sm.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  //------------- voucher
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                    decoration: BoxDecoration(
                        color: Theme.of(context).myColorPrimary,
                        borderRadius: BorderRadius.circular(10.w)),
                    child: Row(
                      children: [
                        const Icon(
                          CupertinoIcons.ticket,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          'Voucher',
                          style: TextStyles.sm.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10.h),
          ...List.generate(items.length, (index) {
            return ListTile(
              leading: Icon(items[index].icon),
              title: Text(items[index].name),
              onTap: items[index].onTap,
            );
          })
        ],
      ),
    );
  }
}
