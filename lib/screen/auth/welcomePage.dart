import 'package:e_commerce_app/utils/color.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "WELCOME TO\nTHE SHOP",
                style: TextStyle(
                    color: Colorr.mainAppColor,
                    fontSize: 42,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("asset/image/welcome.png"))),
            ),
            MaterialButton(
              onPressed: () {},
              color: Colorr.mainAppColor,
              height: 50,
              minWidth: MediaQuery.of(context).size.width / 1.5,
              child: Text(
                "Log In",
                style: TextStyle(
                    color: Colorr.mainwhite,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "I have No Account",
                  style: TextStyle(fontSize: 18, color: Colorr.mainBlack),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Register",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colorr.oregeColor,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
