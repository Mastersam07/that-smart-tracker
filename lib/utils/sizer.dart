import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class SizeMg {
  static double get screenWidth => 1.sw;
  static double get screenHeight => 1.sh;
  static height(double height) => height.h;
  static width(double width) => width.w;
  static text(double size) => size.sp;
  static radius(double size) => size.r;
  static double padH(double size) => width(size);
  static double padV(double size) => height(size);

  static final pagePadding = EdgeInsets.symmetric(horizontal: SizeMg.padH(20));
}
