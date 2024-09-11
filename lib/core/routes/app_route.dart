import 'package:flutter/material.dart';
import 'package:kangsayur_mart/core/models/page_entity.dart';
import 'package:kangsayur_mart/core/routes/page_path.dart';
import 'package:kangsayur_mart/ui/pages/cart/cart_page.dart';
import 'package:kangsayur_mart/ui/pages/home/home_page.dart';
import 'package:kangsayur_mart/ui/pages/profile/profile_page.dart';
import 'package:kangsayur_mart/ui/pages/search/search_page.dart';
import 'package:kangsayur_mart/ui/pages/wishlist/wishlist_page.dart';

class AppRoute {
  static List<PageEntity> get dashboardPageEntities => [
        PageEntity(
          name: 'home',
          path: PagePath.home,
          widget: const HomePage(),
        ),
        PageEntity(
          name: 'search',
          path: PagePath.home,
          widget: const SearchPage(),
        ),
        PageEntity(
            name: 'wishlist',
            path: PagePath.home,
            widget: const WishlistPage()),
        PageEntity(
          name: 'cart',
          path: PagePath.home,
          widget: const CartPage(),
        ),
        PageEntity(
          name: 'profile',
          path: PagePath.home,
          widget: const ProfilePage(),
        ),
      ];

  static Widget dashboardNavigate(int index) {
    return dashboardPageEntities[index].widget;
  }
}
