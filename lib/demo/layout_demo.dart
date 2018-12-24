import 'package:flutter/material.dart';
class LayoutDemo extends StatelessWidget {
  final double size;
  final IconData icon;

  LayoutDemo(this.icon,{
    this.size = 36.0

});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon,size: size,color: Colors.white,),
      height: size + 40,
      width: size + 40,
      color: Colors.cyan,

    );
  }
}
