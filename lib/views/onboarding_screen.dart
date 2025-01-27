import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../terms_widget.dart';
import 'auth/authenticator_screen.dart'; // Ensure this is correct
import '../homepage/krishilinkHomepage.dart'; // Optional, if you want to use this later

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool acceptedTerms = false;
  bool isButtonEnabled = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/onboardFarmer2.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  Text(
                    "Welcome to KrishiLink",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 35,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'YourCustomFont', // Replace with your custom font
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Connecting Farmers, Empowering Markets",
                    style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 480),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                            spreadRadius: 2,
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          topLeft: Radius.circular(16),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'By continuing, you agree to our ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Privacy Policy',
                                    style: TextStyle(
                                      color: Colors.blue[900],
                                      fontSize: 14,
                                      decoration: TextDecoration.underline,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // Handle Privacy Policy tap
                                      },
                                  ),
                                  TextSpan(
                                    text: ' and ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Terms & Conditions',
                                    style: TextStyle(
                                      color: Colors.blue[900],
                                      fontSize: 14,
                                      decoration: TextDecoration.underline,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // Handle Terms & Conditions tap
                                      },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          CheckboxListTile(
                            title: Text(
                              "I accept all terms and conditions",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            value: acceptedTerms,
                            onChanged: (value) {
                              setState(() {
                                acceptedTerms = value!;
                                isButtonEnabled = value;
                              });
                            },
                          ),
                          SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: ElevatedButton(
                              onPressed: isButtonEnabled
                                  ? () {
                                // Log navigation attempt
                                print("Navigating to AuthenticatorScreen");
                                Get.to(() => const AuthenticatorScreen());
                              }
                                  : null,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: isButtonEnabled
                                    ? Colors.lightGreen
                                    : Colors.grey,
                                elevation: 15,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                height: 50,
                                child: Text(
                                  "Get Started",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
