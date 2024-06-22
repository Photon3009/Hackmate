import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hackmate/configurations/constants/assets.gen.dart';
import 'package:hackmate/configurations/router/router.gr.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  Future<void> _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      context.router.replace(const AppHomeRoute());
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final logoHeight = screenSize.height * 0.3;
    final logoWidth = screenSize.width * 0.6;

    return Scaffold(
      backgroundColor: const Color(0xff7967CC),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: screenSize.height / 7), //
          Center(
            child: Image.asset(
              Assets.images.hackmateLogo.path,
              height: logoHeight,
              width: logoWidth,
            ),
          ),
          SizedBox(height: screenSize.height / 7),
          const Text(
            'HackMate',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Swipe, Match & Code',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
