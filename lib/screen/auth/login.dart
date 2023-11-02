import 'package:flutter/material.dart';

import '../../utils/color.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("asset/image/bgg.jpg"))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(color: Colorr.mainwhite.withAlpha(180)),
              height: MediaQuery.of(context).size.height / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Hello",
                    style: TextStyle(fontSize: 32, color: Colorr.mainBlack),
                  ),
                  Text(
                    "Please login to your account",
                    style: TextStyle(fontSize: 20, color: Colorr.mainBlack),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      style: TextStyle(fontSize: 20, color: Colorr.mainBlack),
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail),
                          hintText: "Email Adress",
                          hintStyle:
                              TextStyle(color: Colorr.mainBlack, fontSize: 18)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      style: TextStyle(fontSize: 20, color: Colorr.mainBlack),
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: "Password",
                          hintStyle:
                              TextStyle(color: Colorr.mainBlack, fontSize: 18)),
                    ),
                  ),
                  //forget button
                  MaterialButton(
                    color: Colorr.oregeColor,
                    onPressed: () {},
                    minWidth: 100,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 8,
                      ),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colorr.mainBlack),
                      ),
                    ),
                  ),
                  //loginBUtton

                  //login with
                  Column(
                    children: [
                      Text(
                        "Or Login with",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colorr.mainBlack,
                            fontWeight: FontWeight.w500),
                      ),
                      //Login
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.facebook,
                              )),
                          IconButton(onPressed: () {}, icon: Icon(Icons.mail)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Don't have Account?",
                style: TextStyle(fontSize: 18, color: Colorr.mainwhite),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(fontSize: 18, color: Colorr.oregeColor),
                  ))
            ],
          )
        ],
      ),
    ));
  }
}
