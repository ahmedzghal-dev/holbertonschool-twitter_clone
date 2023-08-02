import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  const CustomFlatButton({
    super.key,
    this.label,
    this.onPressed,
  });

  final String? label;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        label!,
        style: TextStyle(
          color: Colors.blue,
          fontFamily: 'Raleway',
          height: 1,
          fontSize: 30,
        ),
      ),
    );
  }
}
