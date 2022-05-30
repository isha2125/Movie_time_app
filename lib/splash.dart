import 'package:flutter/material.dart';
import 'package:movie_time_app/main.dart';
import 'authentication_page.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 2), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Authpage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff665BE9),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/Movie.png',
                alignment: Alignment.centerLeft,
              ),
              Image.asset(
                'assets/images/logo.png',
                alignment: Alignment.center,
              ),
              Image.asset(
                'assets/images/Time.png',
                alignment: Alignment.centerRight,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
