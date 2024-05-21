import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'walkthrough_screens.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToWalkthroughScreen();
  }

  _navigateToWalkthroughScreen() async {
    await Future.delayed(const Duration(seconds: 5), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const WalkthroughScreen1()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints)
    {
      double circleAvatarRadius = constraints.maxWidth * 0.3;
      double loadingFontSize = constraints.maxWidth * 0.05;
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: circleAvatarRadius,
                child: Image.asset(
                  'assets/logo.png',
                ),
              ),
            ),
            const SizedBox(height: 100.0),
            Text(
              'Loading...',
              style: TextStyle(
                color: Colors.white,
                fontSize: loadingFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
        const SizedBox(height: 20.0),
        const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
          ],
        ),
      );
    },
      ),
    );
  }
}