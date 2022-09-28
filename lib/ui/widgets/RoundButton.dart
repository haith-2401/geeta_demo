
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final Color bgColor;
  final String btnTitle;
  final Color btnTitleColor;
  final VoidCallback callback;

  const RoundButton({Key? key,
    this.bgColor = Colors.transparent,
    required this.btnTitle,
    required this.btnTitleColor,
    required this.callback,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback.call();
      },
      child: Text(btnTitle, style: TextStyle(
        color: btnTitleColor,
        fontSize: 14,
        fontWeight: FontWeight.bold,
        fontFamily: "Lato",),
      ),
      style: ElevatedButton.styleFrom(
        primary: bgColor,
        elevation: 0,
        onSurface: Colors.black,
        side: BorderSide(
            color: Colors.black,
            width: bgColor == Colors.transparent? 2 : 0,
            style: BorderStyle.solid),
        fixedSize: const Size(222, 54),
        shape: const StadiumBorder(),),
    );
  }
}