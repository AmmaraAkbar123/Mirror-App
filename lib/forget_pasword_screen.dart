import 'package:flutter/material.dart';
import 'package:mirror/components/custom_button.dart';
import 'package:mirror/components/custom_textfield.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

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
                SizedBox(height: 20),
                Column(
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
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 45.0),
                  child: CustomButton(
                    text: 'Reset Password',
                    width: double.infinity,
                    onPressed: () {
                      Navigator.pushNamed(context, '/verifyemailotp');
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
