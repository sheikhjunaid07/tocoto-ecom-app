import 'package:e_com_app/AuthenticationPages/sign_up_page.dart';
import 'package:e_com_app/Components/my_button.dart';
import 'package:e_com_app/Components/my_text_field.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _LoginPageState();
}

class _LoginPageState extends State<ForgetPassword> {
  final emailController = TextEditingController();

  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Forget Password")),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(children: [
          const Text("Forget Password",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500)),

          const SizedBox(height: 20),

          const Text("Please Enter your Email and we will send",
              style: TextStyle(fontSize: 16)),
          const Text("You a link to return to your account",
              style: TextStyle(fontSize: 16)),

          const SizedBox(height: 20),

          //email field
          MyTextField(
              hintText: "Enter your Email",
              controller: emailController,
              obSecureText: false),

          const SizedBox(height: 22),

          //continue button
          MyButton(
              text: "Continue",
              boxColor: Colors.orange.shade700,
              textColor: Colors.white,
              onTap: () {}),

          const SizedBox(height: 20),

          const SizedBox(height: 18),

          //don't have an account and sign up button
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Don't have an account? ",
              style: TextStyle(fontSize: 16),
            ),

            //sign up button
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpPage()));
                },
                child: Text("Sign Up",
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 16,
                        fontWeight: FontWeight.w500)))
          ])
        ]),
      ),
    );
  }
}
