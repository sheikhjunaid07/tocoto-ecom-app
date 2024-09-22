import 'package:e_com_app/Components/my_button.dart';
import 'package:e_com_app/MainPages/home_page.dart';
import 'package:flutter/material.dart';

class LoginSuccessPage extends StatelessWidget {
  const LoginSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login success")),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Image.asset("assets/images/social_icons/success.png"),
          Text(
            "Login success",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
          ),

          //back to home button
          MyButton(
              text: "Back to home",
              boxColor: Colors.orange.shade700,
              textColor: Colors.white,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              })
        ]),
      ),
    );
  }
}
