import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kangsayur_mart/core/bloc/theme/theme_cubit.dart';
import 'package:kangsayur_mart/core/models/item_menu.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkTheme = Theme.of(context).brightness == Brightness.dark;

    List<ItemMenu> items = [
      ItemMenu(
          name: isDarkTheme ? 'Dark Theme' : 'Light Theme',
          icon: isDarkTheme ? CupertinoIcons.moon : CupertinoIcons.sun_max,
          onTap: () {
            context.read<ThemeCubit>().toggleTheme();
          }),
      const ItemMenu(name: 'Notifications', icon: CupertinoIcons.bell),
      const ItemMenu(name: 'Customer Service', icon: Icons.support_agent),
      const ItemMenu(name: 'Log Out', icon: Icons.logout)
    ];
    return Card(
      child: Column(
        children: List.generate(items.length, (index) {
          return ListTile(
            leading: Icon(items[index].icon),
            title: Text(items[index].name),
            onTap: items[index].onTap,
          );
        }),
      ),
    );
  }
}
