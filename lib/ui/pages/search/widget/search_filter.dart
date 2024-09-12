import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kangsayur_mart/core/models/categories.dart';
import 'package:kangsayur_mart/core/themes/my_color.dart';
import 'package:kangsayur_mart/core/themes/my_theme.dart';
import 'package:kangsayur_mart/core/themes/text_styles.dart';
import 'package:kangsayur_mart/ui/widgets/input_text.dart';

class SearchFilter extends StatefulWidget {
  const SearchFilter({super.key});

  @override
  State<SearchFilter> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  final List<Categories> _categories = Categories.values;
  List<Categories> selectedCategories = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30.h),
        InputText(
          hint: 'Search...',
          controller: _searchController,
          suffixIcon: GestureDetector(
            onTap: () {},
            child: Icon(
              CupertinoIcons.search,
              color: Theme.of(context).myColorTxt,
            ),
          ),
        ),
        SizedBox(height: 20.h),
        Text(
          'Category',
          style: TextStyles.s.copyWith(color: Theme.of(context).myColorTxt),
        ),
        SizedBox(height: 10.h),
        Wrap(
          spacing: 8.0,
          runSpacing: 8,
          children: _categories.map((category) {
            final isSelected = selectedCategories.contains(category);
            return GestureDetector(
              onTap: () {
                setState(() {
                  isSelected
                      ? selectedCategories.remove(category)
                      : selectedCategories.add(category);
                });
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
        ),
      ],
    );
  }
}
