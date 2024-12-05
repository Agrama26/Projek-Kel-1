import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_healthy_kel1/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    Future.delayed(const Duration(seconds: 5)).then((value) {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
          (route) => false);
    });

    return Scaffold(
      body: Stack(children: [
        Image.asset('assets/images/background.png'),
        Center(
          child: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              Image.asset(
                'assets/images/logo.png',
                height: 30,
              ),
              const SizedBox(
                height: 73,
              ),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: "Helping you\nto keep ",
                      style: GoogleFonts.manrope(
                          fontSize: 24,
                          color: const Color(0xFFDEE1FE),
                          letterSpacing: 3.5 / 100,
                          height: 152 / 100),
                      children: const [
                        TextSpan(
                            text: "your bestie",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800)),
                        TextSpan(text: "\nstay healthy!")
                      ]))
            ],
          )),
        )
      ]),
    );
  }
}
