import 'package:flutter/material.dart';
import 'package:trade_mobile_flutter/statistics_page.dart';

class SuccessLogin extends StatelessWidget {
  const SuccessLogin({Key? key}) : super(key: key);

//check
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 249, 252),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 180,
                  height: 300,
                  child: Image(
                    image: AssetImage('images/check.png'),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'موفق شدید',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Color.fromARGB(255, 41, 48, 77),
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'حساب شما با موفقیت در برنامه ثبت شد\n از الان میتونین استفاده کنین',
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w200,
                    color: Color.fromARGB(255, 41, 48, 77),
                  ),
                ),
                SizedBox(height: 200),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 37, 115, 213),
                    minimumSize: Size(350.0, 43.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => StatisticsPage(),
                      ),
                    );
                  },
                  child: Text(
                    'شروع برنامه',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
