import 'package:flutter/material.dart';
import 'package:mirror/authentication/screen/widgets/custom_button.dart';
import 'package:mirror/authentication/screen/widgets/custom_textfield.dart';
import 'package:mirror/view/screen/widgets/custom_title_appbar.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  bool _isPasswordVisible = false;

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/image.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 40),
                        customTitleAppbar(
                          title: 'Forget Password',
                          icon: Icons.arrow_back_ios_new,
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 253,
                          height: 253,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF023462),
                                Color(0xFF0888FD),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Center(
                            child:
                                Image.asset('assets/images/forgetpassword.png'),
                          ),
                        ),
                        const SizedBox(height: 40),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Create new password',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 30),
                            CustomTextField(
                              height: 56,
                              width: double.infinity,
                              hintText: 'New Password',
                              obscureText: !_isPasswordVisible,
                              isPasswordField: true,
                              onSuffixIconPressed: _togglePasswordVisibility,
                            ),
                            const SizedBox(height: 20),
                            CustomTextField(
                              height: 56,
                              width: double.infinity,
                              hintText: 'Re-enter Password',
                              obscureText: !_isPasswordVisible,
                              isPasswordField: true,
                              onSuffixIconPressed: _togglePasswordVisibility,
                            ),
                          ],
                        ),
                        const Spacer(),
                        const SizedBox(height: 20),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 45.0),
                            child: CustomButton(
                              text: 'Reset Password',
                              width: double.infinity,
                              onPressed: () {
                                Navigator.pushNamed(context, '/login');
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
