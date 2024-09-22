import 'package:e_com_app/AuthenticationPages/otp_verification.dart';
import 'package:e_com_app/Components/my_button.dart';
import 'package:e_com_app/Components/my_text_field.dart';
import 'package:flutter/material.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final addressController = TextEditingController();

  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(children: [
          const Text("Complete Profile",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500)),

          const SizedBox(height: 20),
          const Text("Complete your details or continue",
              style: TextStyle(fontSize: 16)),
          const Text("with social media ", style: TextStyle(fontSize: 16)),

          const SizedBox(height: 20),

          //first name field
          MyTextField(
              hintText: "Enter your First Name",
              controller: firstNameController,
              obSecureText: false),

          const SizedBox(height: 22),

          //last name field
          MyTextField(
              hintText: "Enter your Last Name",
              controller: lastNameController,
              obSecureText: true),

          const SizedBox(height: 22),

          //phone number field
          MyTextField(
              hintText: "Enter your Phone Number",
              controller: phoneNumberController,
              obSecureText: true),

          const SizedBox(height: 22),

          //address field
          MyTextField(
              hintText: "Enter your Address",
              controller: addressController,
              obSecureText: true),

          const SizedBox(height: 10),

          const SizedBox(height: 12),

          //login button (after click you are going to complete Profile page)
          MyButton(
              text: "Continue",
              boxColor: Colors.orange.shade700,
              textColor: Colors.white,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => OtpVerification())));
              }),

          const SizedBox(height: 18),

          //term & conditions
          const Text("By continuing your confirm that you agree",
              style: TextStyle(fontSize: 14)),
          const Text("with our Term and conditions",
              style: TextStyle(fontSize: 14))
        ]),
      ),
    );
  }
}
