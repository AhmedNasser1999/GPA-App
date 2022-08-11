import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  double? width;
  Color? color;
  String? buttonText;
  Function()? onPressed;
  Button({
    Key? key,
    this.width,
    this.onPressed,
    this.color,
    this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 45.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: color),
      child: MaterialButton(
        onPressed: onPressed,
        textColor: Colors.white,
        child: Text(buttonText!),
      ),
    );
  }
}
