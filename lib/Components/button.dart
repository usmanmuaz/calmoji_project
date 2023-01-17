import 'package:calmoji/Components/colors.dart';
import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  final  TextStyle style;
  const MyTextButton({Key? key,
  required this.title,
    required this.onPress,
    this.color = black,
    this.style =   const TextStyle(fontSize: 18, color: grey)
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;

    return InkWell(
      onTap: onPress,
      child: Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle
        ),
        child: Center(
          child: Text(title,
          style: style,
          ),
        ),

      ),
    );
  }
}
