import 'package:flutter/material.dart';
import 'package:inspirationappui/animations/FadeAnimation4.dart';

class ThirteenPage extends StatefulWidget {
  @override
  _ThirteenPageState createState() => _ThirteenPageState();
}

class _ThirteenPageState extends State<ThirteenPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: height / 2,
              width: width + 20,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    height: height / 2,
                    width: width,
                    child: FadeAnimation4(
                      1,
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets13/images/background.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    height: height / 2 + 40,
                    width: width + 20,
                    child: FadeAnimation4(
                      1.2,
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage('assets13/images/background-2.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  FadeAnimation4(
                    1.4,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Color.fromRGBO(49, 39, 79, 1),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation4(
                    1.6,
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(143, 148, 251, .2),
                            blurRadius: 20.0,
                            offset: Offset(0, 10),
                          )
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey[200]),
                              ),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                helperStyle: TextStyle(
                                  color: Colors.black,
                                ),
                                hintStyle: TextStyle(
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.w300,
                                ),
                                hintText: "Username",
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                helperStyle: TextStyle(
                                  color: Colors.black,
                                ),
                                hintStyle: TextStyle(
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.w300,
                                ),
                                hintText: "Password",
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation4(
                    1.8,
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Color.fromRGBO(196, 135, 198, 1),
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation4(
                    2,
                    Container(
                      height: 50,
                      width: 200,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(49, 39, 79, 1),
                            Color.fromRGBO(49, 39, 79, 1),
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation4(
                    2.2,
                    Text(
                      "Create Account?",
                      style: TextStyle(
                        color: Color.fromRGBO(49, 39, 79, 1),
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
