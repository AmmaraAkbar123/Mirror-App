import 'package:flutter/material.dart';

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
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: const EdgeInsets.all(8.0),
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
                      _buildSocialLoginButton('Continue with Google',
                          'assets/images/google-icon.png', _showFields),
                      const SizedBox(height: 12),
                      _buildSocialLoginButton('Continue with Apple',
                          'assets/images/apple-icon.png', _showFields),
                      const SizedBox(height: 12),
                      _buildSocialLoginButton('Continue with Email',
                          'assets/images/email-icon.png', _showFields),
                      const SizedBox(height: 12),
                      _buildSocialLoginButton('Continue with Twitter',
                          'assets/images/x-icon.png', _showFields),
                      const SizedBox(height: 12),
                      _buildSocialLoginButton('Continue with Facebook',
                          'assets/images/fb-icon.png', _showFields),
                      const SizedBox(height: 12),
                      const SizedBox(height: 30),
                    ] else ...[
                      const Text(
                        'Name',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 6),
                      _buildTextField('Enter your name'),
                      const SizedBox(height: 10),
                      const Text(
                        'Email',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 6),
                      _buildTextField('Enter your email'),
                      const SizedBox(height: 10),
                      const Text(
                        'Phone Number',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 6),
                      _buildTextField('Enter your phone number'),
                      const SizedBox(height: 10),
                      const Text(
                        'Password',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 6),
                      _buildTextField('Enter your password',
                          obscureText: !_isPasswordVisible,
                          isPasswordField: true,
                          onSuffixIconPressed: _togglePasswordVisibility),
                      const SizedBox(height: 10),
                      const Text(
                        'Confirm Password',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 6),
                      _buildTextField('Confirm Password',
                          obscureText: !_isConfirmPasswordVisible,
                          isPasswordField: true,
                          onSuffixIconPressed: _toggleConfirmPasswordVisibility),
                      const SizedBox(height: 30),
                      _buildSignUpButton(),
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

  Widget _buildTextField(String hintText,
      {bool obscureText = false,
      bool isPasswordField = false,
      VoidCallback? onSuffixIconPressed}) {
    return Container(
      width: 328,
      height: 46,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(37),
        ),
        border: Border.all(width: 1, color: Colors.white),
      ),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white, fontSize: 14),
          filled: true,
          fillColor: Colors.transparent,
          border: InputBorder.none,
          suffixIcon: isPasswordField
              ? IconButton(
                  icon: Icon(
                    obscureText ? Icons.visibility_off : Icons.visibility,
                    color: Colors.white,
                  ),
                  onPressed: onSuffixIconPressed,
                )
              : null,
        ),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _buildSocialLoginButton(
      String text, String assetPath, VoidCallback onPressed) {
    return Container(
      width: 328,
      height: 56,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.53),
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
        border: Border.all(width: 1, color: Colors.white),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(assetPath, height: 24, width: 24),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSignUpButton() {
    return Container(
      width: 328,
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          side: const BorderSide(color: Colors.white),
        ),
        onPressed: () {},
        child: const Text(
          'Create Account',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
