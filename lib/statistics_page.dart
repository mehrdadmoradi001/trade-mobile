import 'package:flutter/material.dart';
import 'package:trade_mobile_flutter/custom_widget/CenterText.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({Key? key}) : super(key: key);

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
      body: _getPage(),
    );
  }

  Widget _getPage() {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image(
                  image: AssetImage('images/a.png'),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 100),
              child: CenterText(
                text: 'برای 25 آبان Alchemy pay : سیگنال خرید',
                textAlign: TextAlign.right,
                fontWeight: FontWeight.w900,
                fontSize: 14,
                color: Color.fromARGB(255, 41, 48, 77),
              ),
            ),
            SizedBox(height: 5),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              shadowColor: Color.fromARGB(255, 247, 249, 252),
              color: Colors.white,
              child: Container(
                width: 350,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CenterText(
                              text: '12,365',
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.red),
                          CenterText(
                            text: ' : خرید روی',
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 41, 48, 77),
                          ),
                          Icon(
                            Icons.safety_check,
                            color: Color.fromARGB(255, 41, 48, 77),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 1,
                      indent: 110,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CenterText(
                              text: '12,365',
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.red),
                          CenterText(
                            text: ' : خرید روی',
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 41, 48, 77),
                          ),
                          Icon(
                            Icons.safety_check,
                            color: Color.fromARGB(255, 41, 48, 77),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
