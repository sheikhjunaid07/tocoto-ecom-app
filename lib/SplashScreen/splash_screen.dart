import 'package:e_com_app/AuthenticationPages/login_page.dart';
import 'package:e_com_app/Components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashFirst extends StatelessWidget {
  final _controller = PageController();
  SplashFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text("TOKOTO",
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 40,
                    fontWeight: FontWeight.w700)),
            Text("Welcome to TOKOTO, Let's Shop",
                style: TextStyle(fontWeight: FontWeight.w400)),
            Text("Just stay at home with us ",
                style: TextStyle(fontWeight: FontWeight.w400)),
            SizedBox(
                height: 370,
                child: PageView(controller: _controller, children: [
                  Image.asset(
                      "assets/images/splash_screens/ecom_splash_first.png"),
                  Image.asset(
                      "assets/images/splash_screens/ecom_splash_second.png"),
                  Image.asset(
                      "assets/images/splash_screens/ecom_splash_third.png"),
                ])),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                  activeDotColor: Colors.orange.shade700,
                  dotColor: Colors.orange.shade100,
                  dotHeight: 6,
                  dotWidth: 6),
            ),
            SizedBox(height: 100),
            MyButton(
                text: "Continue",
                boxColor: Colors.orange.shade700,
                textColor: Colors.white,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                })
          ],
        ),
      ),
    );
  }
}
