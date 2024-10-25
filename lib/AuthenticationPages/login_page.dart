import 'package:e_com_app/AuthenticationPages/forget_password.dart';
import 'package:e_com_app/AuthenticationPages/login_success_page.dart';
import 'package:e_com_app/AuthenticationPages/sign_up_page.dart';
import 'package:e_com_app/Components/my_button.dart';
import 'package:e_com_app/Components/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Log In")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(children: [
          const Text("Welcome Back",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500)),
          const Text("Sign in with your email and password",
              style: TextStyle(fontSize: 16)),
          const Text("Or continue with social media ",
              style: TextStyle(fontSize: 16)),

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

          const SizedBox(height: 10),

          //remember me checkbox and forget password field
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            //checkbox
            Row(
              children: [
                Checkbox(
                    value: isChecked,
                    activeColor: Colors.orange,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked = newBool;
                      });
                    }),
                const Text("Remember Me", style: TextStyle(fontSize: 16)),
              ],
            ),

            //Forget password field
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgetPassword()));
                },
                child: const Text("Forget Password",
                    style: TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 233, 144, 9))))
          ]),

          const SizedBox(height: 12),

          //login button
          MyButton(
              text: "Login",
              boxColor: Colors.orange.shade700,
              textColor: Colors.white,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginSuccessPage()));
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

          //don't have an account and sign up button
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              "Don't have an account? ",
              style: TextStyle(fontSize: 16),
            ),

            //sign up button
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpPage()));
                },
                child: const Text("Sign Up",
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
