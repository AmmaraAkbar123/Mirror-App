import 'package:flutter/material.dart';
import 'package:mirror/authentication/screen/widgets/custom_button.dart';
import 'package:mirror/authentication/screen/widgets/custom_textfield.dart';
import 'package:mirror/view/screen/widgets/custom_title_appbar.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

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
                        const SizedBox(height: 20),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Forgot Password',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Enter the email address associated with this account",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 20),
                            CustomTextField(
                              hintText: "Email",
                              width: double.infinity,
                              height: 60,
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
                                Navigator.pushNamed(context, '/verifyemailotp');
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
