// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PageEntity {
  final String name;
  final IconData? icon;
  final String path;
  final Widget widget;

  const PageEntity({
    required this.name,
    this.icon,
    required this.path,
    required this.widget,
  });
}
