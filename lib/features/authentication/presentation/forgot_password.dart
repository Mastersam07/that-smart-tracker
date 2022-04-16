import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import '../../../core/navigation/navigation.dart';
import '../../../res/res.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../shared/widgets/app_form_field.dart';
import '../../../utils/sizer.dart';
import '../../../utils/utils.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Util.hideKeyboard(context),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Forgot Password'),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(
              SizeMg.width(16), SizeMg.height(85), SizeMg.width(16), 0),
          child: Column(
            children: [
              Text(
                'Don\'t worry. Enter your email and we\'ll send you a link to reset your password.',
                style: AppStyles.title2,
              ),
              SizedBox(height: SizeMg.padH(46)),
              const AppFormField(label: 'Email'),
              Padding(
                padding: EdgeInsets.symmetric(vertical: SizeMg.width(32)),
                child: SizedBox(
                  height: SizeMg.height(56),
                  width: double.infinity,
                  child: AppButton(
                    onPressed: () =>
                        Routemaster.of(context).replace(AppPages.emailSuccess),
                    btnColor: AppColors.green,
                    label: const Text('Continue'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
