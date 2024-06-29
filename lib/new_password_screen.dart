import 'package:flutter/material.dart';
import 'package:mirror/components/custom_button.dart';
import 'package:mirror/components/custom_textfield.dart';

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
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
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
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.black,
                          size: 12,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Text(
                      'Forget Password',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 25),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  width: 253,
                  height: 253,
                  decoration: BoxDecoration(
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
                    child: Image.asset('assets/images/forgetpassword.png'),
                  ),
                ),
                SizedBox(height: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create new password',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 30),
                    CustomTextField(
                        height: 56,
                        width: double.infinity,
                        hintText: 'New Password',
                        obscureText: !_isPasswordVisible,
                        isPasswordField: true,
                        onSuffixIconPressed: _togglePasswordVisibility),
                    SizedBox(height: 20),
                    CustomTextField(
                        height: 56,
                        width: double.infinity,
                        hintText: 'Re-enter Password',
                        obscureText: !_isPasswordVisible,
                        isPasswordField: true,
                        onSuffixIconPressed: _togglePasswordVisibility),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 45.0),
                  child: CustomButton(
                    text: 'Reset Password',
                    width: double.infinity,
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
