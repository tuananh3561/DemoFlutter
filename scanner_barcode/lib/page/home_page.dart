import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:scanner_barcode/animations/FadeAnimation.dart';
import 'package:scanner_barcode/page/login_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _barcodeScanRes;
  String _value = "";

  final List<Object> _listItem = [
    {"key": "orderId", "value": ""},
    {"key": "itemId", "value": ""},
  ];

  void _incrementCounter() async {
    _barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666", "Cancel", false, ScanMode.DEFAULT);

    setState(() {
      _value = _barcodeScanRes;
    });
  }

  void _onLogOut() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(39, 185, 237, 1),
        automaticallyImplyLeading: false,
        title: Hero(
          tag: "Logo",
          child: Container(
            width: double.infinity,
            child: Container(
              margin: const EdgeInsets.only(
                left: 53,
                right: 3.0,
                bottom: 3.0,
                top: 3.0,
              ),
              height: 46,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo_monkey.png'),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.power_settings_new,
              color: Colors.white,
            ),
            onPressed: () => _onLogOut(),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: _listItem
                  .map(
                    (item) => Card(
                      color: Colors.white,
                      elevation: 1,
                      child: Container(
                          padding: EdgeInsets.all(15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Order Id"),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color:
                                              Color.fromRGBO(39, 185, 237, 1),
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
                                          hintText: "Nhập Order Id",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.clear,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                              )
                            ],
                          )),
                    ),
                  )
                  .toList(),
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FadeAnimation(
              delay: 2,
              child: MaterialButton(
                onPressed: () => {},
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
                      "Lưu",
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
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.settings_overscan),
      ),
    );
  }
}
