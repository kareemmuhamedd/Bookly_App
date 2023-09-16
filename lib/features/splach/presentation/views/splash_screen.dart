import 'package:bookly_app/features/splach/presentation/views/widgets/splash_screen_body.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashScreenBody()
    );
  }
}
