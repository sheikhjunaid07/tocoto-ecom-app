import 'package:flutter/material.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("OTP Verification")),
        body: Column(children: [
          const Text("OTP Verification",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500)),
          const SizedBox(height: 20),
          const Text("We sent your code to {9754682432}",
              style: TextStyle(fontSize: 16)),
          const Text("This code will expire in  0.00",
              style: TextStyle(fontSize: 16)),

          // 4 otp containers

          //sign up button
          //Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginSuccessPage()));
        ]));
  }
}
