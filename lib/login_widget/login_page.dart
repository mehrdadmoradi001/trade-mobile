import 'package:flutter/material.dart';
import 'package:trade_mobile_flutter/custom_widget/CenterText.dart';
import 'package:trade_mobile_flutter/login_widget/success_login.dart';
import 'package:trade_mobile_flutter/statistics_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  void getNavigator(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => page,
      ),
    );
  }

  Widget getElevatedButton(BuildContext context){
    return ElevatedButton(
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
        getNavigator(context, SuccessLogin());
      },
      child: Text(
        'ثــبـت نام',
      ),
    );
  }

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
                  width: 400,
                  height: 400,
                  child: Image(
                    image: AssetImage('images/bit_tech.png'),
                  ),
                ),
                CenterText(
                  text: 'با همدیگر شروع کنیم',
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 41, 48, 77),
                ),
                SizedBox(height: 6),
                CenterText(
                  text:
                      'دنبال زمان دیگر نباش، همین الان شروع کن به اینکه\n چطور حساب های مالی خود را مدیریت کنی با یک مسیر آسان\n فقط در اپلیکیشن ما',
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  fontSize: 12,
                  fontWeight: FontWeight.w200,
                  color: Color.fromARGB(255, 41, 48, 77),
                ),
                SizedBox(height: 50),
                getElevatedButton(context),
                SizedBox(height: 8),
                TextButton(
                  onPressed: () {
                    getNavigator(context, StatisticsPage());
                  },
                  child: Text('ورود به حساب کاربری'),
                  style: TextButton.styleFrom(
                    textStyle:
                        TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
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
