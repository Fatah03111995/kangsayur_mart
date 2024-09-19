import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundedRectangleButton extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;
  final Color color;
  final double height;
  const RoundedRectangleButton({
    super.key,
    required this.onTap,
    required this.child,
    required this.color,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.w),
        color: onTap == null ? color.withOpacity(0.5) : color,
      ),
      child: TextButton(onPressed: onTap, child: child),
    );
  }
}
