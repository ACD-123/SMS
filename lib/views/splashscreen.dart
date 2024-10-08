import 'package:flutter/material.dart';
import 'package:sms/views/onboarding/welcome_screen1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 2),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WelcomeScreen1()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/splashbackgroundimage.png'),
          fit: BoxFit.cover,
        )),
        child: Center(child: Image.asset('assets/images/splashlogo.png')),
      ),
    );
  }
}
