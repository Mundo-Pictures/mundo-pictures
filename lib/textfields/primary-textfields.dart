import 'package:flutter/material.dart';

class PrimaryTextField extends StatelessWidget {
  const PrimaryTextField(
      {super.key, required this.hintText, required this.labelText});

  final String hintText;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
        style: TextStyle(color: Color(0xff4d2773)),
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide:
                  BorderSide(width: 2, color: Color.fromRGBO(255, 152, 0, 1))),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(width: 2, color: Color.fromRGBO(255, 152, 0, 1))),
          hintText: hintText,
          hintStyle: TextStyle(color: Color(0xff4d2773)),
          label: Text(
            labelText,
            style: TextStyle(
                color: Color.fromRGBO(255, 152, 0, 1),
                fontWeight: FontWeight.bold,
                fontSize: 16,
                shadows: [
                  Shadow(
                      offset: Offset(2, 2),
                      blurRadius: 0,
                      color: Color(0xff4d2773))
                ]),
          ),
          fillColor: Color(0xffb0c0ba),
          filled: true,
        ));
  }
}
