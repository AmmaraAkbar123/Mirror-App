import 'package:flutter/material.dart';
import 'package:mirror/components/custom_button.dart';

class VerifyEmailOtp extends StatefulWidget {
  const VerifyEmailOtp({Key? key}) : super(key: key);

  @override
  _VerifyEmailOtpState createState() => _VerifyEmailOtpState();
}

class _VerifyEmailOtpState extends State<VerifyEmailOtp> {
  // Controllers and Focus nodes for each OTP box
  late List<TextEditingController> _controllers;
  late List<FocusNode> _focusNodes;

  @override
  void initState() {
    super.initState();
    // Initialize controllers and focus nodes
    _controllers = List.generate(4, (index) => TextEditingController());
    _focusNodes = List.generate(4, (index) => FocusNode());
    // Add listeners to move focus to the next box on text change
    for (int i = 0; i < 3; i++) {
      _controllers[i].addListener(() {
        if (_controllers[i].text.isNotEmpty) {
          // Move focus to the next box
          _focusNodes[i + 1].requestFocus();
        }
      });
    }
  }

  @override
  void dispose() {
    // Clean up controllers and focus nodes
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
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
                    child: Image.asset(
                      'assets/images/verifyotp.png',
                      height: 200,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Verify your email',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Please enter the 4 digit code sent to your email.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(4, (index) {
                        return _buildOtpBox(index);
                      }),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "If you didn’t receive a code",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Resend",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ],
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
                      Navigator.pushNamed(context, '/newpassword');
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

  Widget _buildOtpBox(int index) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: _controllers[index].text.isNotEmpty
            ? Colors.white
            : Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12),
      ),
      alignment: Alignment.center,
      child: TextFormField(
        controller: _controllers[index],
        focusNode: _focusNodes[index],
        textAlign: TextAlign.center,
        style: TextStyle(
          color: _controllers[index].text.isNotEmpty
              ? Color(0xFF0885F8)
              : Colors.white,
          fontSize: 24,
        ),
        keyboardType: TextInputType.number,
        maxLength: 1,
        onChanged: (value) {
          if (value.isNotEmpty) {
            // Move focus to the next box
            if (index < _focusNodes.length - 1) {
              _focusNodes[index + 1].requestFocus();
            }
          }
          // Update the UI to reflect the entered value
          setState(() {});
        },
        decoration: InputDecoration(
          counterText: "",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
