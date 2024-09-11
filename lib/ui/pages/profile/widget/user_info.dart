import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kangsayur_mart/core/themes/my_color.dart';
import 'package:kangsayur_mart/core/themes/my_theme.dart';
import 'package:kangsayur_mart/core/themes/text_styles.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
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

          //-------------- ADDRESS
          ListTile(
            leading: Icon(
              CupertinoIcons.map_pin,
              color: Theme.of(context).myColorTxt,
            ),
            title: Text(
              'Address',
              style:
                  TextStyles.sm.copyWith(color: Theme.of(context).myColorTxt),
            ),
            subtitle: Text(
              'Perumahan Grand Cibening Residence Blok A1 No3, Kel. Cibening, Kec. Setu, Kab.Bekasi',
              style: TextStyles.s.copyWith(
                color: Theme.of(context).myColorTxt,
              ),
            ),
            trailing: Icon(
              CupertinoIcons.right_chevron,
              color: Theme.of(context).myColorTxt,
            ),
            onTap: () async {
              await showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      icon: Icon(CupertinoIcons.map_pin),
                      title: Text('Edit Address'),
                      content: TextField(),
                      actions: [
                        TextButton(onPressed: () {}, child: Text('Update'))
                      ],
                    );
                  });
            },
          ),

          //-------------- PASSWORD
          ListTile(
            leading: Icon(
              CupertinoIcons.lock,
              color: Theme.of(context).myColorTxt,
            ),
            title: Text(
              'Change Password',
              style:
                  TextStyles.sm.copyWith(color: Theme.of(context).myColorTxt),
            ),
          ),
        ],
      ),
    );
  }
}
