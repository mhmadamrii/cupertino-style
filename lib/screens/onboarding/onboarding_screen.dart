import 'package:cupertino_style/screens/root_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E201E),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 80.5),
                child: Image.asset(
                  'assets/spotify_white.png',
                  width: 80,
                  height: 80,
                  fit: BoxFit.contain,
                ),
              ),
              const Text(
                "Millions of Songs",
                style: TextStyle(color: Colors.white, fontSize: 30.5),
              ),
              const Text(
                "Free on Spotify.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.5,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(
                    40.0,
                  ),
                ),
                onPressed: () {
                  print("hello");
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => RootScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Color(0xFF1E201E),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
