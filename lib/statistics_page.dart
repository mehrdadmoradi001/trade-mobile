import 'package:flutter/material.dart';
import 'package:trade_mobile_flutter/custom_widget/CenterText.dart';
import 'package:trade_mobile_flutter/custom_widget/custom_statistics_page.dart';
import 'package:trade_mobile_flutter/login_widget/login_page.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({Key? key}) : super(key: key);

  void getNavigator(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => page,
      ),
    );
  }

  PreferredSizeWidget _getApp() {
    return AppBar(
      title: Text('VIP اخبار و سیگنال های'),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 41, 48, 77),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 249, 252),
      appBar: _getApp(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              CustomStatisticsPage('a',
                  'برای 25 آبان Alchemy pay : سیگنال خرید', '12,365', '12,560'),
              SizedBox(height: 25),
              CustomStatisticsPage(
                  'c', 'برای 25 آبان Cosmos : سیگنال خرید', '12,365', '12,560'),
              SizedBox(height: 25),
              CustomStatisticsPage(
                  'r', 'برای 25 آبان Ripple : سیگنال خرید', '12,365', '12,560'),
              SizedBox(height: 25),
              CustomStatisticsPage('s', 'برای 25 آبان SafeMoon : سیگنال خرید',
                  '12,365', '12,560'),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: TextButton(
                  onPressed: () {
                    getNavigator(context, LoginPage());
                  },
                  child: CenterText(
                      text: 'خروج از حساب',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
