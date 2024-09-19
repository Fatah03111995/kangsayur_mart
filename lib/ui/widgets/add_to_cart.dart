import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kangsayur_mart/core/bloc/wishlist/wishlist_bloc.dart';
import 'package:kangsayur_mart/core/models/product_model.dart';
import 'package:kangsayur_mart/core/themes/my_color.dart';
import 'package:kangsayur_mart/core/themes/my_theme.dart';
import 'package:kangsayur_mart/core/themes/text_styles.dart';

class AddToCart extends StatefulWidget {
  final ProductModel product;
  const AddToCart({super.key, required this.product});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  TextEditingController value = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.w)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            titleAlignment: ListTileTitleAlignment.center,
            tileColor: Theme.of(context).myColorContainer,
            leading: SizedBox(
              width: 50.w,
              height: 50.w,
              child: Image.asset(
                widget.product.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    context
                        .read<WishlistBloc>()
                        .add(Toggle(product: widget.product));
                  },
                  child:
                      BlocSelector<WishlistBloc, WishlistState, List<String>>(
                    selector: (state) {
                      if (state is WishlistSuccessed) {
                        return state.productIds;
                      } else {
                        return [];
                      }
                    },
                    builder: (context, wishlistIds) {
                      return Icon(
                        Icons.favorite,
                        color: wishlistIds.contains(widget.product.productId)
                            ? Colors.red
                            : Colors.grey,
                      );
                    },
                  ),
                ),
                SizedBox(width: 10.w),
                Text(
                  widget.product.name,
                  textAlign: TextAlign.center,
                  style: TextStyles.sm.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).myColorTxt),
                ),
              ],
            ),
            subtitle: Column(
              children: [
                Text(
                  'Stock : ${widget.product.stock} ${widget.product.unit}',
                  style: TextStyles.s.copyWith(
                    color: Theme.of(context).myColorTxt,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        double number =
                            (double.tryParse(value.text) ?? 0) + 0.5;
                        if (number > widget.product.stock) {
                          value.text = '${widget.product.stock}';
                        } else {
                          value.text = '$number';
                        }
                      },
                      icon: Icon(CupertinoIcons.add),
                    ),
                    Container(
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.w),
                          color: MyColor.blue4),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: value,
                        textAlign: TextAlign.center,
                        style: TextStyles.sm
                            .copyWith(color: Theme.of(context).myColorTxt),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Theme.of(context).myColorContainer,
                            hintText: value.text.isEmpty ? '0' : value.text,
                            hintStyle: TextStyles.sm
                                .copyWith(color: Theme.of(context).myColorTxt),
                            border: InputBorder.none),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        double number =
                            (double.tryParse(value.text) ?? 0) - 0.5;
                        if (number < 0) {
                          value.text = '0';
                        } else {
                          value.text = '$number';
                        }
                      },
                      icon: const Icon(CupertinoIcons.minus),
                    ),
                  ],
                ),
              ],
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.cart,
                color: MyColor.blue1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
