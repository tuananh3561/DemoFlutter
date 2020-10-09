import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inspirationappui/page/eight_page.dart';
import 'package:inspirationappui/page/eleven_page.dart';
import 'package:inspirationappui/page/fifteen_page.dart';
import 'package:inspirationappui/page/five_page.dart';
import 'package:inspirationappui/page/four_page.dart';
import 'package:inspirationappui/page/fourteen_page.dart';
import 'package:inspirationappui/page/nine_page.dart';
import 'package:inspirationappui/page/one_page.dart';
import 'package:inspirationappui/page/seven_page.dart';
import 'package:inspirationappui/page/six_page.dart';
import 'package:inspirationappui/page/sixteen_page.dart';
import 'package:inspirationappui/page/ten_page.dart';
import 'package:inspirationappui/page/thirteen_page.dart';
import 'package:inspirationappui/page/three_page.dart';
import 'package:inspirationappui/page/twelve_page.dart';
import 'package:inspirationappui/page/two_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: NinePage(),
    );
  }
}
