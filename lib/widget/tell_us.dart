
import 'package:flutter/cupertino.dart';

class TellUs extends StatelessWidget{
  const TellUs({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 20,right: 100),
      child: Text(
        'Tell us about your destination in EGYPT !!',
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800
        ),),
    );
  }
}