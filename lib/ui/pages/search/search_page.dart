import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kangsayur_mart/core/bloc/filter/filter_bloc.dart';
import 'package:kangsayur_mart/core/bloc/search/search_bloc.dart';
import 'package:kangsayur_mart/core/models/product_model.dart';
import 'package:kangsayur_mart/core/themes/my_color.dart';
import 'package:kangsayur_mart/core/themes/my_theme.dart';
import 'package:kangsayur_mart/core/themes/text_styles.dart';
import 'package:kangsayur_mart/ui/pages/cart/cart_page.dart';
import 'package:kangsayur_mart/ui/widgets/card_product.dart';
import 'package:kangsayur_mart/ui/widgets/filter_widget.dart';
import 'package:kangsayur_mart/ui/widgets/search_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).myColorScaffoldBg,
      appBar: AppBar(
        backgroundColor: Theme.of(context).myColorScaffoldBg,
        title: Row(
          children: [
            Expanded(
                child: SizedBox(
                    height: 40.w,
                    child: const SearchWidget(
                      isInSearchPage: true,
                    ))),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CartPage()));
                },
                icon: Badge(
                  label: Text(
                    '0',
                    style: TextStyles.xs.copyWith(color: Colors.white),
                  ),
                  child: Icon(
                    CupertinoIcons.cart,
                    color: Theme.of(context).myColorTxt,
                  ),
                ))
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            const FilterWidget(),
            SizedBox(height: 10.h),
            Expanded(
              child: BlocBuilder<SearchBloc, SearchState>(
                  builder: (context, state) {
                if (state is SearchLoading || state is SearchInitial) {
                  return Center(
                    child: CircularProgressIndicator(
                      color: MyColor.blue1,
                    ),
                  );
                }

                if (state is SearchSuccess) {
                  if (state.searchedProduct.isNotEmpty) {
                    return BlocBuilder<FilterBloc, FilterState>(
                      builder: (context, filterState) {
                        List<ProductModel> filteredProduct = [];
                        if (filterState.selectedCategories.isEmpty) {
                          filteredProduct = [...state.searchedProduct];
                        } else {
                          filteredProduct = [
                            ...state.searchedProduct.where((product) =>
                                filterState.selectedCategories
                                    .contains(product.category))
                          ];
                        }

                        return GridView.builder(
                            itemCount: filteredProduct.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 5,
                              crossAxisSpacing: 5,
                              childAspectRatio: 0.7,
                            ),
                            itemBuilder: (context, index) {
                              return CardProduct(
                                  product: filteredProduct[index]);
                            });
                      },
                    );
                  } else {
                    return Center(
                      child: Text(
                        'Not Found Data, Try Search Another One',
                        style: TextStyles.m.copyWith(
                          color: Theme.of(context).myColorTxt,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }
                }

                return Center(
                  child: Text(
                    'Try Search By Name of Product',
                    style: TextStyles.m
                        .copyWith(color: Theme.of(context).myColorTxt),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
