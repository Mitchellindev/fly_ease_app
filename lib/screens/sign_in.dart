import 'package:flutter/material.dart';
import 'package:fly_ease_app/config/router/route.dart';
import 'package:fly_ease_app/widgets/button_widget.dart';
import 'package:fly_ease_app/widgets/icon_button.dart';
import 'package:fly_ease_app/widgets/textfield.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({
    super.key,
  });
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromRGBO(74, 144, 226, 1);

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              const Text(
                'Sign In',
                style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
              ),
              const Text(
                'Welcome back to FlyEase. Get amazing deals on flight offers and more. ',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 48),
              MyTextField(
                controller: emailController,
                obscureText: false,
                hintText: 'Email',
              ),
              const SizedBox(height: 16),
              MyTextField(
                controller: passwordController,
                obscureText: true,
                hintText: 'Password',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Material(
                      child: CheckboxListTile(
                        contentPadding: EdgeInsets.zero,
                        activeColor: Colors.white,
                        checkColor: primaryColor,
                        side: const BorderSide(
                          color: primaryColor,
                          style: BorderStyle.solid,
                        ),
                        title: Transform.translate(
                            offset: const Offset(-20, 0),
                            child: const Text('Remember me')),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.forgotPasswordScreen);
                    },
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(color: primaryColor),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 48),
              MyButton(
                label: 'Sign In',
                backgroundColor: primaryColor,
                onPressed: () {
                  Navigator.pushNamed(context, Routes.homeScreen);
                },
                textColor: Colors.white,
                borderColor: primaryColor,
              ),
              const SizedBox(height: 45),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    child: Divider(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('OR'),
                  ),
                  SizedBox(
                    width: 100,
                    child: Divider(),
                  ),
                ],
              ),
              const SizedBox(height: 45),
              MyIconButton(
                icon: 'assets/images/apple.png',
                label: 'Sign In with Apple',
                onPressed: () {},
                backgroundColor: Colors.black,
                textColor: Colors.white,
              ),
              const SizedBox(height: 16),
              MyIconButton(
                icon: 'assets/images/google.png',
                label: 'Sign In with Google',
                onPressed: () {},
                backgroundColor: Colors.white,
                textColor: Colors.black,
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account? '),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.signUpScreen);
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: primaryColor),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
