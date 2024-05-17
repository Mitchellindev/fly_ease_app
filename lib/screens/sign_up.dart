import 'package:flutter/material.dart';
import 'package:fly_ease_app/config/router/route.dart';
import 'package:fly_ease_app/widgets/button_widget.dart';
import 'package:fly_ease_app/widgets/icon_button.dart';
import 'package:fly_ease_app/widgets/textfield.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({
    super.key,
  });
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
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
                'Sign Up',
                style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
              ),
              const Text(
                'Get access to amazing deals on flight offers and more.',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 48),
              MyTextField(
                controller: firstNameController,
                obscureText: false,
                hintText: 'First name',
              ),
              const SizedBox(height: 16),
              MyTextField(
                controller: lastNameController,
                obscureText: false,
                hintText: 'Last name',
              ),
              const SizedBox(height: 16),
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
              const SizedBox(height: 48),
              MyButton(
                label: 'Sign Up',
                backgroundColor: primaryColor,
                onPressed: () {},
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
                label: 'Sign Up with Apple',
                onPressed: () {},
                backgroundColor: Colors.black,
                textColor: Colors.white,
              ),
              const SizedBox(height: 16),
              MyIconButton(
                icon: 'assets/images/google.png',
                label: 'Sign Up with Google',
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
                      Navigator.pushNamed(context, Routes.signInScreen);
                    },
                    child: const Text(
                      'Sign In',
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
