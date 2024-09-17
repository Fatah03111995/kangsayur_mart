import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kangsayur_mart/core/bloc/product/product_bloc.dart';
import 'package:kangsayur_mart/core/bloc/product/product_state.dart';
import 'package:kangsayur_mart/core/themes/my_color.dart';
import 'package:kangsayur_mart/core/themes/my_theme.dart';
import 'package:kangsayur_mart/core/themes/text_styles.dart';
import 'package:kangsayur_mart/ui/pages/cart/cart_page.dart';
import 'package:kangsayur_mart/ui/pages/home/widget/landing.dart';
import 'package:kangsayur_mart/ui/pages/home/widget/special_price.dart';
import 'package:kangsayur_mart/ui/widgets/card_product.dart';
import 'package:kangsayur_mart/ui/widgets/filter_widget.dart';
import 'package:kangsayur_mart/ui/widgets/search_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).myColorScaffoldBg,
        appBar: AppBar(
          backgroundColor: Theme.of(context).myColorScaffoldBg,
          title: Row(
            children: [
              Text(
                'KangSayur',
                style: TextStyles.m.copyWith(color: MyColor.blue1),
              ),
              SizedBox(width: 10.w),
              Expanded(
                  child: SizedBox(height: 40.w, child: const SearchWidget())),
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
        body: CustomScrollView(
          slivers: [
            const Landing(),
            SliverToBoxAdapter(child: SizedBox(height: 15.h)),
            const SpecialPrice(),
            SliverToBoxAdapter(child: SizedBox(height: 15.h)),
            SliverToBoxAdapter(
              child: Center(
                child: SizedBox(
                    width: 350,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Select Category',
                          style: TextStyles.sm.copyWith(
                              color: Theme.of(context).myColorTxt,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5.h),
                        const FilterWidget(),
                      ],
                    )),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 15.h)),
            SliverToBoxAdapter(
                child: Text(
              'Our Products',
              textAlign: TextAlign.center,
              style: TextStyles.sm.copyWith(
                color: Theme.of(context).myColorTxt,
                fontWeight: FontWeight.bold,
              ),
            )),
            SliverToBoxAdapter(child: SizedBox(height: 15.h)),
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                if (state is ProductLoading) {
                  return SliverToBoxAdapter(
                    child: Center(
                      child: CircularProgressIndicator(
                        color: MyColor.blue1,
                      ),
                    ),
                  );
                }

                if (state is ProductLoaded && state.listProducts.isNotEmpty) {
                  return SliverGrid.builder(
                      itemCount: state.listProducts.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5,
                        childAspectRatio: 0.7,
                      ),
                      itemBuilder: (context, index) {
                        return CardProduct(
                          product: state.listProducts[index],
                        );
                      });
                }

                return SliverToBoxAdapter(
                  child: Center(
                    child: Text(
                      'No Data Here',
                      style: TextStyles.ml
                          .copyWith(color: Theme.of(context).myColorTxt),
                    ),
                  ),
                );
              },
            )
          ],
        ));
  }
}
