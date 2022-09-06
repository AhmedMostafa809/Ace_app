import 'package:ace_app/Componants/Clolors.dart';
import 'package:ace_app/Componants/Image.dart';
import 'package:ace_app/ForgotPassword.dart';
import 'package:ace_app/Widgets/btn.dart';
import 'package:ace_app/Sign.dart';
import 'package:flutter/material.dart';
import 'package:ace_app/Widgets/btn.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(Img.bgImage),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                "Get The Fashion You Deserve",
                style: TextStyle(fontSize: 67, color: clr.startTxt, fontFamily: 'HTOWERT'),
              ),

              const Spacer(),
              button(
                  txt: "Sign in",
                  backGroundClr: clr.startTxt,
                  BorderClr: clr.startTxt,
                  ontap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => signPage(intialIndex: 0,)));
                  },
                  txtClr: clr.brownClr),
              const SizedBox(
                height: 20,
              ),
              button(
                  txt: "Sign up",
                  backGroundClr: Colors.transparent,
                  BorderClr: clr.brownClr,
                  ontap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => signPage(intialIndex: 1,)));
                  },
                  txtClr: clr.startTxt)
            ],
          ),
        ),
      ),
    );
  }
}
