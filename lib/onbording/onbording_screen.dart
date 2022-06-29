import 'package:algoriza1/shared/components.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../login/login_screen.dart';
import '../regester/regester_screen.dart';

class BordingModel {
  final String image;
  final String title1;
  final String title2;

  BordingModel({
    required this.image,
    required this.title1,
    required this.title2,
  });
}

class BordingScreen extends StatelessWidget {
  List<BordingModel> bording = [
    BordingModel(
      image: 'images/bording3.png',
      title1: 'Get food delivery to your doorstep asap',
      title2:
          'We have young and professional delivery team that will bring your food as soon as possible to your doorste',
    ),
    BordingModel(
      image: 'images/bording2.png',
      title1: 'Buy Any Food from your favorite restaurant',
      title2:
          'We are constantly adding your favorite restaurant throughout the territory and around your area caefully selected',
    ),
    BordingModel(
        image: 'images/bording1.png',
        title1: 'Get food delivery to your doorstep asap',
        title2:
            'We are constantly adding your favorite restaurant throughout the territory and around your area caefully selected'),
  ];
  var bordingController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(7),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.orange.withOpacity(.3)),
              child: TextButton(
                onPressed: () {
                  NavAndFinish(context, LoginScreen());
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '7',
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Krave',
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Expanded(
              child: PageView.builder(
                controller: bordingController,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) =>
                    Build_Bording_Item(bording[index]),
                itemCount: bording.length,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SmoothPageIndicator(
              controller: bordingController,
              effect: ExpandingDotsEffect(
                  dotColor: Colors.grey,
                  dotHeight: 10,
                  activeDotColor: Colors.orange.withOpacity(.3),
                  dotWidth: 10),
              count: bording.length,
            ),
            const SizedBox(
              height: 30,
            ),
            BigButton(context,
                text: 'Get Started', widget: const LoginScreen()),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                SmallButton(context, text: 'Sign Up', widget: RegesterScreen())
              ],
            ),
          ],
        ),
      ),
    );
  }
}
