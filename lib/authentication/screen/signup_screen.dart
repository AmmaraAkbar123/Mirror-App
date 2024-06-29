import 'package:flutter/material.dart';
import 'package:mirror/authentication/screen/widgets/custom_textfield.dart';
import 'package:mirror/authentication/screen/widgets/custom_button.dart';
import 'package:mirror/authentication/screen/widgets/custom_social_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _showSignupFields = false;
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  void _showFields() {
    setState(() {
      _showSignupFields = true;
    });
  }

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  void _toggleConfirmPasswordVisibility() {
    setState(() {
      _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/image.jpeg', fit: BoxFit.cover),
          Center(
            child: SingleChildScrollView(
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
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 20),
                    if (!_showSignupFields) ...[
                      CustomSocialButton(
                        text: 'Continue with Google',
                        imagePath: 'assets/icons/google-icon.png',
                        onPressed: _showFields,
                      ),
                      const SizedBox(height: 12),
                      CustomSocialButton(
                        text: 'Continue with Apple',
                        imagePath: 'assets/icons/apple-icon.png',
                        onPressed: _showFields,
                      ),
                      const SizedBox(height: 12),
                      CustomSocialButton(
                        text: 'Continue with Email',
                        imagePath: 'assets/icons/email-icon.png',
                        onPressed: _showFields,
                      ),
                      const SizedBox(height: 12),
                      CustomSocialButton(
                        text: 'Continue with Twitter',
                        imagePath: 'assets/icons/x-icon.png',
                        onPressed: _showFields,
                      ),
                      const SizedBox(height: 12),
                      CustomSocialButton(
                        text: 'Continue with Facebook',
                        imagePath: 'assets/icons/fb-icon.png',
                        onPressed: _showFields,
                      ),
                      const SizedBox(height: 12),
                      const SizedBox(height: 30),
                    ] else ...[
                      const Text(
                        'Name',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 6),
                      CustomTextField(hintText: 'Enter your name'),
                      const SizedBox(height: 10),
                      const Text(
                        'Email',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 6),
                      CustomTextField(hintText: 'Enter your email'),
                      const SizedBox(height: 10),
                      const Text(
                        'Phone Number',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 6),
                      CustomTextField(hintText: 'Enter your phone number'),
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
                          onSuffixIconPressed: _togglePasswordVisibility),
                      const SizedBox(height: 10),
                      const Text(
                        'Confirm Password',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 6),
                      CustomTextField(
                          hintText: 'Confirm Password',
                          obscureText: !_isConfirmPasswordVisible,
                          isPasswordField: true,
                          onSuffixIconPressed:
                              _toggleConfirmPasswordVisibility),
                      const SizedBox(height: 30),
                      CustomButton(
                        text: 'Create Account',
                        onPressed: () {},
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: const Text(
                            'Already have an account? Login',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
