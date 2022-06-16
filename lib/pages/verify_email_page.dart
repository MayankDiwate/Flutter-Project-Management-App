import 'package:flutter/material.dart';
import 'package:project_management_app/pages/login_page.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({Key? key}) : super(key: key);

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  bool isVerified = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: isVerified
            ? const LoginScreen()
            : const Scaffold(
                body: Text('Verify Email'),
              ),
      ),
    );
  }
}
