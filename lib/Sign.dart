import 'dart:ui';
import 'package:ace_app/Componants/Style.dart';
import 'package:ace_app/ForgotPassword.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ace_app/Componants/Clolors.dart';
import 'package:ace_app/Widgets/SecuredTextField.dart';
import 'package:ace_app/Widgets/NormalTextField.dart';
import 'package:ace_app/Widgets/btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class signPage extends StatefulWidget {
  final intialIndex;
  signPage({required this.intialIndex}) ;

  @override
  _signPageState createState() => _signPageState();
}

bool signOutSecure = true;
bool isSecured = true;
bool confirmed = true;
// final Key _formKey;


class _signPageState extends State<signPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2,initialIndex: widget.intialIndex);

  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: clr.brownClr,
        elevation: 0,
      ),
      backgroundColor: clr.brownClr,
      body: SafeArea(
        child: Center(
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
                        style: txtStyle.highTwoer,
                      ),
                      Text(
                        "Fashion",
                        style: txtStyle.highTwoer.copyWith(fontSize: 36),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Scaffold(
                  backgroundColor: clr.startTxt,
                  appBar: AppBar(
                    backgroundColor: clr.brownClr,
                    flexibleSpace: Container(
                      decoration: BoxDecoration(
                          color: clr.startTxt,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(35),
                              topLeft: Radius.circular(35))),
                    ),
                    toolbarHeight: 20,
                    // backgroundColor: clr.backGroundclr,
                    bottom: TabBar(
                        controller: _tabController,
                        indicatorColor: clr.brownClr,
                        unselectedLabelColor: clr.paleBrownClr,
                        labelColor: clr.brownClr,
                        tabs: const [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                  fontSize: 32, fontFamily: 'HTOWERT'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontSize: 32, fontFamily: 'HTOWERT'),
                            ),
                          ),
                        ]),
                  ),
                  body: TabBarView(controller: _tabController, children: [
                    Form(
                      // key: ,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            NormalTxt(
                                Action: TextInputAction.next,
                                hintTxt: "User@gmail.com",
                                labelText: "Email",
                                icon: Icons.mail,
                                keyBoardType: TextInputType.emailAddress),
                            securedTxt(
                                Action: TextInputAction.done,
                                hintTxt: "********",
                                labelText: "Password",
                                secured: isSecured,
                                icon: isSecured == true
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                ontap: () {
                                  setState(() {
                                    isSecured = !isSecured;
                                  });
                                },
                                keyBoardType: TextInputType.visiblePassword),
                            Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 30),
                                child: button(
                                    txt: "Sign in",
                                    backGroundClr: clr.brownClr,
                                    BorderClr: clr.brownClr,
                                    ontap: () {
                                      // _form.currentState.validate();

                                    },
                                    txtClr: clr.startTxt)),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => forgetPassword()));
                              },
                              child: Text(
                                "Forget Password?",
                                style: TextStyle(
                                    color: clr.paleBrownClr, fontSize: 20),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 120, right: 15),
                                    child: Divider(
                                      color: clr.paleBrownClr,
                                      thickness: 1,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Or",
                                  style: TextStyle(
                                      color: clr.paleBrownClr, fontSize: 20),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 120),
                                    child: Divider(
                                      color: clr.paleBrownClr,
                                      thickness: 1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  FontAwesomeIcons.facebookF,
                                  size: 30,
                                  color: clr.brownClr,
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                Icon(FontAwesomeIcons.instagram,
                                    size: 30, color: clr.brownClr),
                                const SizedBox(
                                  width: 50,
                                ),
                                Icon(FontAwesomeIcons.google,
                                    size: 30, color: clr.brownClr)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Form(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            NormalTxt(
                                Action: TextInputAction.next,
                                hintTxt: "User@gmail.com",
                                labelText: "Email",
                                icon: Icons.mail,
                                keyBoardType: TextInputType.emailAddress),
                            NormalTxt(
                                Action: TextInputAction.next,
                                hintTxt: "01.......",
                                labelText: "Phone",
                                icon: Icons.phone,
                                keyBoardType: TextInputType.phone),
                            securedTxt(
                                Action: TextInputAction.done,
                                hintTxt: "********",
                                labelText: "Password",
                                secured: signOutSecure,
                                icon: signOutSecure == true
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                ontap: () {
                                  setState(() {
                                    signOutSecure = !signOutSecure;
                                  });
                                },
                                keyBoardType: TextInputType.visiblePassword),
                            securedTxt(
                                Action: TextInputAction.done,
                                hintTxt: "********",
                                labelText: "Confirm Password",
                                secured: confirmed,
                                icon: confirmed == true
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                ontap: () {
                                  setState(() {
                                    confirmed = !confirmed;
                                  });
                                },
                                keyBoardType: TextInputType.visiblePassword),
                            Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 30),
                                child: button(
                                    txt: "Sign Up",
                                    backGroundClr: clr.brownClr,
                                    BorderClr: clr.brownClr,
                                    ontap: () {},
                                    txtClr: clr.startTxt)),
                            // InkWell(
                            //   onTap: () {
                            //     Navigator.push(
                            //         context,
                            //         MaterialPageRoute(
                            //             builder: (context) =>
                            //                 forgetPassword()));
                            //   },
                            //   child: Text(
                            //     "Forget Password?",
                            //     style: TextStyle(
                            //         color: clr.paleBrownClr, fontSize: 20),
                            //   ),
                            // ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 120, right: 15),
                                    child: Divider(
                                      color: clr.paleBrownClr,
                                      thickness: 1,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Or",
                                  style: TextStyle(
                                      color: clr.paleBrownClr, fontSize: 20),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 120),
                                    child: Divider(
                                      color: clr.paleBrownClr,
                                      thickness: 1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  FontAwesomeIcons.facebookF,
                                  size: 30,
                                  color: clr.brownClr,
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                Icon(FontAwesomeIcons.instagram,
                                    size: 30, color: clr.brownClr),
                                const SizedBox(
                                  width: 50,
                                ),
                                Icon(FontAwesomeIcons.google,
                                    size: 30, color: clr.brownClr)
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
