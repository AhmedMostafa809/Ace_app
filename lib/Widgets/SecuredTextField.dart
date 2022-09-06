import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ace_app/Componants/Clolors.dart';
class securedTxt extends StatefulWidget {
  String hintTxt, labelText;
  TextInputAction Action;
  TextInputType keyBoardType;
  IconData icon;
  bool secured;
  Function()? ontap;
  securedTxt(
      {
        required this.ontap,
        required this.secured,
        required this.icon,
        required this.Action,
        required this.hintTxt,
        required this.keyBoardType,
        required this.labelText});

  @override
  _securedTxtState createState() => _securedTxtState();
}

class _securedTxtState extends State<securedTxt> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
      child: TextFormField(
        obscureText: widget.secured,
        cursorColor: clr.brownClr,
        textInputAction: widget.Action,
        keyboardType: widget.keyBoardType,
        style: TextStyle(color: clr.brownClr),
        decoration: InputDecoration(
          hintStyle: TextStyle(color: clr.paleBrownClr, fontSize: 15),
          hintText: widget.hintTxt,
          labelText: widget.labelText,
          labelStyle: TextStyle(color: clr.brownClr, fontSize: 15),
          disabledBorder:
          OutlineInputBorder(borderSide: BorderSide(color: clr.brownClr)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide(color: clr.paleBrownClr)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide(color: clr.brownClr)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide(color: clr.brownClr)),
          contentPadding: EdgeInsets.symmetric(horizontal: 30),

          suffixIcon: InkWell(
            onTap: widget.ontap,
            child:  Icon(
            widget.icon,color: clr.paleBrownClr,),
          ),
        ),
      ),
    );
  }
}
