import 'package:flutter/material.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';

import '../../homepage/krishilinkHomepage.dart'; // Update this import to the correct path for HomePage

class AuthenticatorScreen extends StatelessWidget {
  const AuthenticatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      signUpForm: SignUpForm.custom(fields: [
        SignUpFormField.name(required: true),
        SignUpFormField.email(required: true),
        SignUpFormField.password(),
        SignUpFormField.passwordConfirmation(),
      ]),
      child: MaterialApp(
        builder: Authenticator.builder(),
        home: const AuthenticatedView(),
      ),
    );
  }
}

// After successful authentication, navigate to HomePage
class AuthenticatedView extends StatelessWidget {
  const AuthenticatedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          child: const Text('Continue to KrishiLink Homepage'),
        ),
      ),
    );
  }
}