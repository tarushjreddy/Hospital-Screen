// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PrimaryTextFormField extends StatefulWidget {
  const PrimaryTextFormField({
    Key? key,
    required this.placeholder,
    required this.prefixIcon,
    required this.condition,
    required this.formValue,
    required this.validationFunction,
    required this.onSavedFunction,
    this.isObscureText: false,
    this.textInputType: TextInputType.text,
  }) : super(key: key);
  final String placeholder;
  final String formValue;
  final bool condition;

  final IconData prefixIcon;

  final Function validationFunction;
  final Function onSavedFunction;
  final bool isObscureText;
  final TextInputType textInputType;

  @override
  _PrimaryTextFormFieldState createState() => _PrimaryTextFormFieldState();
}

class _PrimaryTextFormFieldState extends State<PrimaryTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: widget.condition,
      keyboardType: widget.textInputType,
      obscureText: widget.isObscureText,
      textAlign: TextAlign.start,
      decoration: widget.prefixIcon == null
          ? InputDecoration(
              hintTextDirection: TextDirection.ltr,
              // suffixText: "Helo",
              // suffixStyle: TextStyle(color: Colors.red),
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              border: OutlineInputBorder(),
              hintText: widget.placeholder,
              hintStyle: TextStyle(color: Color(0xffB2B2B2), fontSize: 14),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                // ignore: prefer_const_constructors
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(
                  color: Color(0xffDDDDDD),
                  width: 1.0,
                ),
              ))
          : InputDecoration(
              hintTextDirection: TextDirection.ltr,
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              prefixIcon: Icon(widget.prefixIcon, color: Color(0xffB2B2B2)),
              border: OutlineInputBorder(),
              hintText: widget.placeholder,
              hintStyle: TextStyle(color: Color(0xffB2B2B2), fontSize: 14),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                // ignore: prefer_const_constructors
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(
                  color: Color(0xffDDDDDD),
                  width: 1.0,
                ),
              )),
    );
  }
}
