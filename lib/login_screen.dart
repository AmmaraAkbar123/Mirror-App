import 'package:flutter/material.dart';

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
          Image.asset('assets/images/image.jpeg', fit: BoxFit.cover),
          Center(
            child: SingleChildScrollView(
              child: Padding(
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
                        'Log In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 20),
                      _buildSocialLoginButton(
                        'Login with Google',
                        'assets/images/google-icon.png',
                      ),
                      const SizedBox(height: 10),
                      _buildSocialLoginButton(
                        'Login with Apple',
                        'assets/images/apple-icon.png',
                      ),
                      const SizedBox(height: 20),
                      const Center(
                        child: Text(
                          '----------------------------- OR -----------------------------',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Email',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 6),
                      _buildTextField('Enter your email'),
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
                      const SizedBox(height: 30),
                      _buildSignInButton(),
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

  Widget _buildSocialLoginButton(String text, String imagePath) {
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, width: 24, height: 24),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }

  Widget _buildSignInButton() {
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
          'Login',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
