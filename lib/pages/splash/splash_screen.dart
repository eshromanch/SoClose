import 'package:flutter/material.dart';
import 'package:interview/main.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (_) => MyCustomDrawer(),
      //   ),
      // );
      Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.bottomToTop,
              child: MyCustomDrawer(),
              duration: const Duration(
                seconds: 1,
              )));
// MyCustomDrawer
    });

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/splash.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Text(
            "OXY BOOTS",
            style: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
