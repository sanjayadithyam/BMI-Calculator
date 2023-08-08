import 'package:flutter/material.dart';

class reuse extends StatelessWidget {
  reuse(this.colour,this.child);
  final Color colour;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: child,
    );
  }
}