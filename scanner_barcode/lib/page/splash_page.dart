import 'package:flutter/material.dart';
import 'package:scanner_barcode/animations/FadeAnimation.dart';
import 'package:scanner_barcode/page/home_page.dart';
import 'package:scanner_barcode/page/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  PageController pageController = new PageController();
  var _currentIndex = 0;
  AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      lowerBound: 0.5,
      duration: Duration(seconds: 3),
    )..repeat();

    Future.delayed(const Duration(seconds: 2), () {
      checkLoggedIn();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  checkLoggedIn() async {
//    final SharedPreferences prefs = await _prefs;
//    String token = prefs.getString('token');
    String token = "asdasdasd";
    bool loggedIn = token == '' ? false : true;
    if (loggedIn) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: "Logo",
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: FadeAnimation(
              delay: 1,
              child: Container(
                width: 280,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo_monkey.png"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
