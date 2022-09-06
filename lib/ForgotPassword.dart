import 'package:ace_app/Componants/Clolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Sign.dart';
import 'Widgets/NormalTextField.dart';
import 'Widgets/SecuredTextField.dart';
import 'Widgets/btn.dart';

class forgetPassword extends StatefulWidget {
  const forgetPassword({Key? key}) : super(key: key);

  @override
  _signOutState createState() => _signOutState();
}

class _signOutState extends State<forgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: clr.brownClr,
      child: SafeArea(

        child: (Scaffold(
          appBar: AppBar(
            backgroundColor: clr.brownClr,
            elevation: 0,

          ),
          backgroundColor: clr.brownClr,
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Text(
                          "ACE",
                          style: TextStyle(
                              fontSize: 86,
                              color: clr.startTxt,
                              fontFamily: 'HTOWERT'),
                        ),
                        Text(
                          "Fashion",
                          style: TextStyle(
                              fontSize: 36,
                              color: clr.startTxt,
                              fontFamily: 'HTOWERT'),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: clr.startTxt,
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(35),
                            topLeft: Radius.circular(35))),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,

                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Column(
                              children: [
                                Text("Reset Password",
                                    style: TextStyle(
                                        fontSize: 32,
                                        color: clr.brownClr,
                                        fontFamily: 'HTOWERT')),
                                Divider(
                                  color: clr.brownClr,
                                  thickness: 2,
                                ),
                              ],
                            ),
                          ),
                          Column(

                            children: [

                              NormalTxt(
                                  Action: TextInputAction.next,
                                  hintTxt: "User@gmail.com",
                                  labelText: "Email",
                                  icon: Icons.mail,
                                  keyBoardType: TextInputType.emailAddress),

                              Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 100, horizontal: 30),
                                  child: button(
                                      txt: " Reset",
                                      backGroundClr: clr.brownClr,
                                      BorderClr: clr.brownClr,
                                      ontap: () {},
                                      txtClr: clr.startTxt)),
                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
