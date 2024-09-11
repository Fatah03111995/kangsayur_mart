import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kangsayur_mart/ui/pages/profile/widget/settings.dart';
import 'package:kangsayur_mart/ui/pages/profile/widget/transaction.dart';
import 'package:kangsayur_mart/ui/pages/profile/widget/user_info.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> profilesMenu = const [UserInfo(), Transaction(), Settings()];
    return Padding(
        padding: EdgeInsets.only(
          left: 10.w,
          right: 10.w,
        ),
        child: ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(height: 10.h);
            },
            itemCount: profilesMenu.length,
            itemBuilder: (context, index) {
              return profilesMenu[index];
            }));
  }
}
