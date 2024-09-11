import 'package:flutter/material.dart';

class PageEntity {
  final String name;
  final String path;
  final Widget widget;

  const PageEntity({
    required this.name,
    required this.path,
    required this.widget,
  });
}
