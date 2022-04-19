import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class My_Card extends StatelessWidget {
  final Color color;
  final Widget Child;
  final VoidCallback onPress;
  My_Card({
    required this.color,
    required this.Child,
    required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: Child,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(width: 5.0, color: Colors.white),
        ),
        padding: EdgeInsets.all(10.0),
      ),
    );
  }
}
