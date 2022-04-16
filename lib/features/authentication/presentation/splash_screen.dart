import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:smart_tracker/core/navigation/navigation.dart';
import 'package:smart_tracker/shared/widgets/app_button.dart';
import 'package:smart_tracker/utils/sizer.dart';
import '../../../res/res.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.green,
      body: const Center(child: Image(image: Assets.splashLogo)),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeMg.width(42)),
          child: SizedBox(
            height: SizeMg.height(56),
            child: AppButton(
              onPressed: () => Routemaster.of(context).push(AppPages.login),
              label: Text(
                'Get started',
                style: AppStyles.button.copyWith(color: AppColors.green),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
