import 'package:custom_pin_screen/custom_pin_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import '../../../core/navigation/navigation.dart';
import '../../../res/res.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../utils/sizer.dart';
import '../../../utils/utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Util.hideKeyboard(context),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(
              SizeMg.width(16), SizeMg.height(56), SizeMg.width(16), 0),
          child: Column(
            children: [
              TextFormField(
                validator: (value) {},
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: AppStyles.ag,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: AppColors.green),
                    borderRadius: BorderRadius.circular(SizeMg.radius(16)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: AppColors.green),
                    borderRadius: BorderRadius.circular(SizeMg.radius(16)),
                  ),
                ),
              ),
              SizedBox(height: SizeMg.padH(24)),
              TextFormField(
                validator: (value) {},
                decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: AppStyles.ag,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: AppColors.green),
                      borderRadius: BorderRadius.circular(SizeMg.radius(16)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: AppColors.green),
                      borderRadius: BorderRadius.circular(SizeMg.radius(16)),
                    ),
                    suffixIcon: IconButton(
                      padding: EdgeInsets.zero,
                      icon: const Icon(
                        Icons.visibility_outlined,
                        color: AppColors.light20,
                      ),
                      onPressed: () {},
                    )),
              ),
              SizedBox(height: SizeMg.padH(17)),
              Padding(
                padding: EdgeInsets.symmetric(vertical: SizeMg.width(15)),
                child: SizedBox(
                  height: SizeMg.height(56),
                  width: double.infinity,
                  child: AppButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PinAuthentication(
                          onChanged: (v) {
                            if (kDebugMode) {
                              print(v);
                            }
                            if (v.length == 4) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PinAuthentication(
                                    onChanged: (v) {
                                      if (kDebugMode) {
                                        print(v);
                                      }
                                      if (v.length == 4) {
                                        if (kDebugMode) {
                                          print('done!');
                                        }
                                      }
                                    },
                                    action: 'Re type your PIN again.',
                                    backgroundColor: AppColors.green,
                                  ),
                                ),
                              );
                            }
                          },
                          action: 'Let\'s setup your PIN',
                          backgroundColor: AppColors.green,
                        ),
                      ),
                    ),
                    btnColor: AppColors.green,
                    label: const Text('Login'),
                  ),
                ),
              ),
              SizedBox(height: SizeMg.padH(33)),
              GestureDetector(
                onTap: () =>
                    Routemaster.of(context).replace(AppPages.forgotPassword),
                child: Text(
                  'Forgot Password?',
                  style: AppStyles.title3.copyWith(
                    color: AppColors.green,
                  ),
                ),
              ),
              SizedBox(
                height: SizeMg.padH(38),
              ),
              RichText(
                text: TextSpan(
                  text: 'Don\'t have an account yet? ',
                  style: AppStyles.ag,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign Up',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () =>
                            Routemaster.of(context).replace(AppPages.signup),
                      style: AppStyles.body3.copyWith(
                          color: AppColors.green,
                          decoration: TextDecoration.underline),
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
