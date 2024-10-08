import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kangsayur_mart/core/bloc/filter/filter_bloc.dart';
import 'package:kangsayur_mart/core/models/categories.dart';
import 'package:kangsayur_mart/core/themes/my_color.dart';
import 'package:kangsayur_mart/core/themes/my_theme.dart';
import 'package:kangsayur_mart/core/themes/text_styles.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<Categories> categories = Categories.values;

    return BlocBuilder<FilterBloc, FilterState>(
      builder: (context, state) {
        return Wrap(
          spacing: 8.0,
          runSpacing: 8,
          children: categories.map((category) {
            List<Categories> selectedCategories = state.selectedCategories;
            final isSelected = selectedCategories.contains(category);
            return GestureDetector(
              onTap: () {
                context.read<FilterBloc>().add(Toggle(category: category));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: isSelected
                      ? MyColor.blue1
                      : Theme.of(context).myColorContainer.withOpacity(0.7),
                  border: Border.all(
                      color: isSelected
                          ? Colors.blue
                          : Theme.of(context).myColorContainer),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    dataCategories[category]!.image(width: 40, height: 40),
                    SizedBox(width: 3.0.h),
                    Text(
                      category.name,
                      style: TextStyles.s
                          .copyWith(color: Theme.of(context).myColorTxt),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
