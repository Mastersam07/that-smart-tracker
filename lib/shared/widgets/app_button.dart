import 'package:flutter/material.dart';
import 'package:smart_tracker/res/res.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    this.btnColor,
    this.borderColor,
    this.label,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  final Color? btnColor;
  final Color? borderColor;
  final Widget? label;
  final Widget? icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    var btn = icon != null
        ? ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                primary: btnColor ?? AppColors.light100,
                side: BorderSide(
                  width: 1.0,
                  color: borderColor ?? btnColor ?? AppColors.light100,
                )),
            onPressed: onPressed,
            label: label ?? Container(),
            icon: icon!,
          )
        : ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: btnColor ?? AppColors.light100,
                side: BorderSide(
                  width: 1.0,
                  color: borderColor ?? btnColor ?? AppColors.light100,
                )),
            onPressed: onPressed,
            child: label,
          );
    return btn;
  }
}
