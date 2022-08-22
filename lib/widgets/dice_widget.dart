import 'package:flutter/material.dart';

class DiceWidget extends StatelessWidget {
  final void Function() onTap;
  final int img;
  const DiceWidget({Key key, this.onTap, this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 170.0,
          width: 175.0,
          color:const Color.fromARGB(255, 255, 53, 120),
          child: Image.asset('images/$img.png'),
        ),
      ),
    );
  }
}
