import 'package:flutter/material.dart';

import 'package:login_ui/widgets/bottunWidgets.dart';
import 'package:login_ui/widgets/gradentBtn.dart';
import 'package:login_ui/widgets/loginFeild.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset('assets/images/signin_balls.png'),
                const Text(
                  'Sign in.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
                const SizedBox(height: 30),
                const SocialButton(
                  iconPath: 'assets/svgs/g_logo.svg',
                  lable: 'Continue with Google',
                ),
                const SizedBox(height: 20),
                const SocialButton(
                  iconPath: 'assets/svgs/f_logo.svg',
                  lable: 'Continue with Facebook',
                  horizontalPadding: 90,
                ),
                const SizedBox(height: 15),
                const Text(
                  'or',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                const SizedBox(height: 15),
                const LoginField(hintText: 'Email'),
                const SizedBox(height: 15),
                const LoginField(hintText: 'Password'),
                const SizedBox(height: 20),
                const GradientButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
