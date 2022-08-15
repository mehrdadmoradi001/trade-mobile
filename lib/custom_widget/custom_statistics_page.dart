import 'package:flutter/material.dart';
import 'package:trade_mobile_flutter/custom_widget/CenterText.dart';

Widget CustomStatisticsPage(
    String image, String text, String buy, String sell) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Padding(
        padding: EdgeInsets.all(16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Image(
            image: AssetImage('images/$image.png'),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 23),
        child: CenterText(
          text: text,
          textAlign: TextAlign.right,
          fontWeight: FontWeight.w900,
          fontSize: 15,
          color: Color.fromARGB(255, 41, 48, 77),
        ),
      ),
      SizedBox(height: 5),
      Padding(
        padding: EdgeInsets.only(right: 16),
        child: Card(
          elevation: 8,
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
                          text: buy,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Colors.green),
                      CenterText(
                        text: ' : خرید روی',
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 41, 48, 77),
                      ),
                      Icon(
                        Icons.monetization_on_outlined,
                        color: Color.fromARGB(255, 37, 115, 213),
                        size: 25,
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
                          text: sell,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Colors.red),
                      CenterText(
                        text: ' : فروش روی',
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 41, 48, 77),
                      ),
                      Icon(
                        Icons.sell_outlined,
                        color: Color.fromARGB(255, 37, 115, 213),
                        size: 25,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
