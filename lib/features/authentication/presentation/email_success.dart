import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import '../../../core/navigation/navigation.dart';
import '../../../res/res.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../utils/sizer.dart';

class EmailSuccess extends StatefulWidget {
  const EmailSuccess({Key? key}) : super(key: key);

  @override
  State<EmailSuccess> createState() => _EmailSuccessState();
}

class _EmailSuccessState extends State<EmailSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeMg.width(42)),
          child: SizedBox(
            height: SizeMg.height(56),
            child: AppButton(
              onPressed: () => Routemaster.of(context).push(AppPages.login),
              btnColor: AppColors.green,
              label: Text(
                'Back to login',
                style: AppStyles.button.copyWith(color: AppColors.light100),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeMg.width(24)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: Assets.emailImage,
              width: SizeMg.width(250),
            ),
            SizedBox(height: SizeMg.padH(31)),
            Text('Your email is on the way', style: AppStyles.title2),
            SizedBox(height: SizeMg.padH(24)),
            Text(
              'Check your email test@test.com and follow the instructions to reset your password',
              style: AppStyles.body1,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
