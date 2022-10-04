import 'package:flutter/material.dart';

class IconTabbarButton extends StatelessWidget {
  final String iconPath;
  final VoidCallback callback;

  const IconTabbarButton({
    Key? key,
    required this.iconPath,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      // padding: EdgeInsets.all(10.0),
      child: ElevatedButton(
          onPressed: () {
            callback.call();
          },
          style: ElevatedButton.styleFrom(
              side: BorderSide(width: 0, color: Colors.transparent)),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(iconPath))),
          )),
    );
  }
}
