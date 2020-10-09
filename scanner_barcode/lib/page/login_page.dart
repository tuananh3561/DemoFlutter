import 'package:flutter/material.dart';
import 'package:scanner_barcode/animations/FadeAnimation.dart';
import 'package:http/http.dart' as http;
import 'package:scanner_barcode/page/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final String url = "";
  List data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getJsonData();
  }

  Future<String> getJsonData() async {
//    var response = await http.get(url);
  }

  void _onLogIn() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: height / 2 - 50,
                width: width,
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FadeAnimation(
                      delay: 1.4,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Đăng Nhập",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: height / 2 + 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      FadeAnimation(
                        delay: 1.6,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(39, 185, 237, .3),
                                blurRadius: 20.0,
                                offset: Offset(0, 10),
                              )
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 5,
                                  horizontal: 10,
                                ),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color.fromRGBO(39, 185, 237, 1),
                                    ),
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    helperStyle: TextStyle(
                                      color: Colors.black,
                                    ),
                                    hintStyle: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w100,
                                    ),
                                    hintText: "Nhập sdt/email/tên đăng nhập",
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 5,
                                  horizontal: 10,
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    helperStyle: TextStyle(
                                      color: Colors.black,
                                    ),
                                    hintStyle: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w100,
                                    ),
                                    hintText: "Nhập mật khẩu",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FadeAnimation(
                        delay: 1.8,
                        child: Text(
                          "Quên mật khẩu",
                          style: TextStyle(
                            color: Color.fromRGBO(39, 185, 237, 1),
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FadeAnimation(
                        delay: 2,
                        child: MaterialButton(
                          onPressed: () => _onLogIn(),
                          minWidth: double.infinity,
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(39, 185, 237, 1),
                                  Color.fromRGBO(39, 185, 237, 1),
                                ],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Đăng Nhập",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
