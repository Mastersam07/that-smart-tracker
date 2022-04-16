import 'package:flutter/material.dart';
import '../../res/res.dart';
import '../../utils/sizer.dart';

class AppFormField extends StatelessWidget {
  const AppFormField({
    Key? key,
    this.validator,
    this.label,
    this.isPassword = false,
    this.controller,
  }) : super(key: key);

  final String? Function(String?)? validator;
  final String? label;
  final bool isPassword;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
          labelText: label,
          labelStyle: AppStyles.ag,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.green),
            borderRadius: BorderRadius.circular(SizeMg.radius(16)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.green),
            borderRadius: BorderRadius.circular(SizeMg.radius(16)),
          ),
          suffixIcon: isPassword
              ? IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(
                    Icons.visibility_outlined,
                    color: AppColors.light20,
                  ),
                  onPressed: () {},
                )
              : null),
    );
  }
}
