import 'package:flutter/material.dart';
import 'package:mirror/components/custom_textfield.dart';
import 'package:mirror/components/custom_button.dart';
import 'package:mirror/components/custom_social_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = false;

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/image.jpeg', fit: BoxFit.cover,),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(0, 0, 0, 0).withOpacity(0.37),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(37),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      const Text(
                        'Log In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 20),
                      CustomSocialButton(
                        text: 'Login with Google',
                        imagePath: 'assets/images/google-icon.png',
                        onPressed: () {
                          // Handle Google login
                        },
                      ),
                      const SizedBox(height: 10),
                      CustomSocialButton(
                        text: 'Login with Apple',
                        imagePath: 'assets/images/apple-icon.png',
                        onPressed: () {
                          // Handle Apple login
                        },
                      ),
                      const SizedBox(height: 20),
                      const Center(
                        child: Text(
                          '--------------------- OR ---------------------',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Email',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 6),
                      CustomTextField(hintText: 'Enter your email'),
                      const SizedBox(height: 10),
                      const Text(
                        'Password',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 6),
                      CustomTextField(
                        hintText: 'Enter your password',
                        obscureText: !_isPasswordVisible,
                        isPasswordField: true,
                        onSuffixIconPressed: _togglePasswordVisibility,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/forgetpassword');
                            },
                            child: const Text(
                              'Forget Password?',
                              style: TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      CustomButton(
                        text: 'Login',
                        onPressed: () {
                           Navigator.pushNamed(context, '/home');
                        },
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/signup');
                          },
                          child: const Text(
                            'Don\'t have an account? Sign Up',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}