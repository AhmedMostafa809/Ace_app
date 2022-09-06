import 'package:ace_app/Componants/Clolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final String txt;
  final Function() ontap;
  final Color backGroundClr,txtClr,BorderClr;
  button({required this.txt,required this.backGroundClr,required this.BorderClr,required this.ontap,required this.txtClr});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: backGroundClr,
          border: Border.all(width: 2,color: BorderClr)
        ),
        child: Center(
          child: Text(txt
          ,style: TextStyle(fontSize: 24,color: txtClr, fontFamily: 'yugothib'),
          ),
        ),
      ),
    );
  }
}
