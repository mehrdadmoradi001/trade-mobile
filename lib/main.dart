import 'package:flutter/material.dart';
import 'package:trade_mobile_flutter/login_widget/login_page.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: LoginPage(),
    );
  }
}
