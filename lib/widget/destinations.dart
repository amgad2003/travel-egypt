import 'package:flutter/cupertino.dart';

class Destinations extends StatelessWidget {
  const Destinations({super.key, required this.text1,required this.text2});
  final String? text1;
  final String? text2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                text1!,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                )
            ),
            Text(
                text2!,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF3EBACE)
                )
            )
          ]),
    );
  }
}