import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kangsayur_mart/core/models/item_menu.dart';

class Transaction extends StatelessWidget {
  const Transaction({super.key});

  @override
  Widget build(BuildContext context) {
    List<ItemMenu> items = [
      const ItemMenu(name: 'Orders', icon: CupertinoIcons.bag),
      const ItemMenu(name: 'Transaction History', icon: CupertinoIcons.time),
      const ItemMenu(name: 'Review', icon: CupertinoIcons.star)
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
