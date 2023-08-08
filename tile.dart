import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class tiles extends StatelessWidget {

  tiles(this.icon,this.text);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            icon,
            size: 60,
            color: Colors.white,
          ),
          SizedBox(height: 10,),
          Text(
            text,
            style: tiletxt,
          ),
        ],
      ),
    );
  }
}