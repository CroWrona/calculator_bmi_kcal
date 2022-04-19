import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onPress;
  Button({
    required this.icon,
    required this.color,
    required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon,color: color,),
      onPressed: onPress,
      constraints: BoxConstraints.tightFor(width: 45, height: 45,),
      shape: CircleBorder(),
      fillColor: Colors.black,
    );
  }
}