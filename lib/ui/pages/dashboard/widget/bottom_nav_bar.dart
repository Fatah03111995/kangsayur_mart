import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kangsayur_mart/core/bloc/dashboard/dashboard_cubit.dart';
import 'package:kangsayur_mart/core/bloc/dashboard/dashboard_state.dart';
import 'package:kangsayur_mart/core/models/item_menu.dart';
import 'package:kangsayur_mart/core/models/page_entity.dart';
import 'package:kangsayur_mart/core/routes/app_route.dart';
import 'package:kangsayur_mart/core/themes/my_color.dart';
import 'package:kangsayur_mart/core/themes/my_theme.dart';
import 'package:kangsayur_mart/core/themes/text_styles.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.w),
        color: Theme.of(context).myColorSecondary,
      ),
      height: 60.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(AppRoute.dashboardPageEntities.length, (index) {
          return BlocBuilder<DashboardCubit, DashboardState>(
            builder: (context, state) {
              bool isActive = state.index == index;
              return GestureDetector(
                onTap: () {
                  context.read<DashboardCubit>().changeIndex(index);
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      width: isActive ? 50.w : 0,
                      height: isActive ? 30.w : 0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: MyColor.blue1,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          AppRoute.dashboardPageEntities[index].icon,
                          color: isActive
                              ? Theme.of(context).myColorTxt
                              : Colors.grey,
                          size: 30.sp,
                        ),
                        if (isActive)
                          Text(
                            AppRoute.dashboardPageEntities[index].name,
                            style: TextStyles.s.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).myColorTxt,
                            ),
                          )
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
