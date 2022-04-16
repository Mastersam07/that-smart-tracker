import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:smart_tracker/core/navigation/navigation.dart';
import 'package:smart_tracker/res/res.dart';
import 'package:smart_tracker/shared/widgets/app_button.dart';
import 'package:smart_tracker/shared/widgets/app_form_field.dart';
import 'package:smart_tracker/utils/sizer.dart';
import 'package:smart_tracker/utils/utils.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Util.hideKeyboard(context),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sign Up'),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(
              SizeMg.width(16), SizeMg.height(56), SizeMg.width(16), 0),
          child: Column(
            children: [
              const AppFormField(label: 'Name'),
              SizedBox(
                height: SizeMg.padH(24),
              ),
              const AppFormField(label: 'Email'),
              SizedBox(
                height: SizeMg.padH(24),
              ),
              const AppFormField(
                label: 'Password',
                isPassword: true,
              ),
              SizedBox(
                height: SizeMg.padH(17),
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: AppColors.green,
                value: true,
                contentPadding: EdgeInsets.zero,
                onChanged: (v) {},
                title: RichText(
                  text: TextSpan(
                    text: 'By signing up, you agree to the ',
                    style: AppStyles.body3,
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Terms of Service and Privacy Policy',
                        style: AppStyles.body3.copyWith(color: AppColors.green),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: SizeMg.width(15)),
                child: SizedBox(
                  height: SizeMg.height(56),
                  width: double.infinity,
                  child: AppButton(
                    onPressed: () {},
                    btnColor: AppColors.green,
                    label: const Text('Sign Up'),
                  ),
                ),
              ),
              Text('Or with',
                  style: AppStyles.ag.copyWith(fontSize: SizeMg.text(14))),
              Padding(
                padding: EdgeInsets.symmetric(vertical: SizeMg.width(15)),
                child: SizedBox(
                  height: SizeMg.height(56),
                  width: double.infinity,
                  child: AppButton(
                    onPressed: () {},
                    borderColor: const Color(0xFFF1F1FA),
                    label: Text(' Sign Up with Google',
                        style:
                            AppStyles.button.copyWith(color: AppColors.dark50)),
                    icon: const Image(
                      image: Assets.googleIcon,
                      width: 26,
                    ),
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'Already have an account? ',
                  style: AppStyles.ag,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Login',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () =>
                            Routemaster.of(context).replace(AppPages.login),
                      style: AppStyles.body3.copyWith(color: AppColors.green),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
