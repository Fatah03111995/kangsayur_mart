// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ItemMenu {
  final String name;
  final String? description;
  final IconData icon;
  final void Function()? onTap;
  const ItemMenu({
    required this.name,
    this.description,
    required this.icon,
    this.onTap,
  });
}
