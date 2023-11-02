import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/color.dart';
import '../../widget/materialButton.dart';
import '../../widget/text_field.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    final _formState = GlobalKey<FormState>();
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("asset/image/bgg.jpg"))),
        child: Obx(()
          => Form(
            key: _formState,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    // height: MediaQuery.of(context).size.height / 1.5,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white.withAlpha(180),
                    child: Column(
                      children: [
                        Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 32, color: Colorr.mainBlack),
                        ),
                        TextFormFieldWidget(
                          isRequired: true,
                          hintText: "First Name",
                          preIcon: Icon(Icons.person),
                        ),
                        TextFormFieldWidget(
                          isRequired: true,
                          hintText: "Last Name",
                          preIcon: Icon(Icons.person),
                        ),
                        TextFormFieldWidget(
                          isRequired: true,
                          hintText: " Email",
                          preIcon: Icon(Icons.mail),
                        ),
                        TextFormFieldWidget(
                          isRequired: true,
                          hintText: "Password",
                          preIcon: Icon(Icons.lock),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        MButton(
                          onTap: () {
                            if (_formState.currentState!.validate()) {
                              //do somethis
                            }
                          },
                          text: "Sign Up",
                          minWidth: 150,
                          bColor: Colorr.oregeColor,
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Already have accounts?",
                        style: TextStyle(fontSize: 18, color: Colorr.mainwhite)),
                    TextButton(
                        onPressed: () {},
                        child: Text("Sing In",
                            style: TextStyle(
                                fontSize: 18, color: Colorr.oregeColor)))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
