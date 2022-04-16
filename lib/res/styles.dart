import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/sizer.dart';

import 'colors.dart';

abstract class AppStyles {
  static TextStyle heading = GoogleFonts.inter(
    fontSize: SizeMg.text(36),
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
  static TextStyle title1 = GoogleFonts.inter(
    fontSize: SizeMg.text(32),
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );
  static TextStyle title2 = GoogleFonts.inter(
    fontSize: SizeMg.text(24),
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  static TextStyle title3 = GoogleFonts.inter(
    fontSize: SizeMg.text(18),
    fontWeight: FontWeight.w600,
    color: AppColors.dark50,
  );
  static TextStyle body1 = GoogleFonts.inter(
    fontSize: SizeMg.text(16),
    fontWeight: FontWeight.w500,
    color: AppColors.dark25,
  );
  static TextStyle body3 = GoogleFonts.inter(
    fontSize: SizeMg.text(14),
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
  static TextStyle button = GoogleFonts.nunito(
    fontSize: SizeMg.text(18),
    fontWeight: FontWeight.w700,
    color: AppColors.light100,
  );
  static TextStyle caption = GoogleFonts.inter(
    fontSize: SizeMg.text(16),
    fontWeight: FontWeight.w500,
  );
  static TextStyle ag = GoogleFonts.inter(
    fontSize: SizeMg.text(16),
    fontWeight: FontWeight.w400,
    color: AppColors.light20,
  );
}
