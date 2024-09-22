import 'package:e_com_app/AuthenticationPages/complete_profile.dart'; 
import 'package:e_com_app/Components/my_button.dart';
import 'package:e_com_app/Components/my_text_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(children: [
          const Text("Register Account",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500)),

          const SizedBox(height: 20),
          const Text("Complete your details or continue",
              style: TextStyle(fontSize: 16)),
          const Text("with social media ", style: TextStyle(fontSize: 16)),

          const SizedBox(height: 20),

          //email field
          MyTextField(
              hintText: "Enter your Email",
              controller: emailController,
              obSecureText: false),

          const SizedBox(height: 22),

          //password field
          MyTextField(
              hintText: "Enter your Password",
              controller: passwordController,
              obSecureText: true),

          const SizedBox(height: 22),

          //confirm password field
          MyTextField(
              hintText: "Re-Enter your Password",
              controller: confirmPasswordController,
              obSecureText: true),

          const SizedBox(height: 22),

          //login button (after click you are going to complete Profile page)
          MyButton(
              text: "Continue",
              boxColor: Colors.orange.shade700,
              textColor: Colors.white,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CompleteProfile()));
              }),

          const SizedBox(height: 20),

          //google, facebook, twitter button to directly login
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //google button
              GestureDetector(
                onTap: () {},
                child: Image.asset("assets/images/social_icons/google.png",
                    fit: BoxFit.cover, width: 40, height: 40),
              ),

              //facebook button
              GestureDetector(
                onTap: () {},
                child: Image.asset("assets/images/social_icons/facebook.png",
                    fit: BoxFit.cover, width: 40, height: 40),
              ),

              //twitter button
              GestureDetector(
                onTap: () {},
                child: Image.asset("assets/images/social_icons/twitter.png",
                    fit: BoxFit.cover, width: 40, height: 40),
              ),
            ],
          ),

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
