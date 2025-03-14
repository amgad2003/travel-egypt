import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListOfIcons  extends StatefulWidget {

  const ListOfIcons({super.key});

  @override
  State<ListOfIcons> createState() => _ListOfIconsState();
}

class _ListOfIconsState extends State<ListOfIcons> {
  int selectIcon = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
              });
              selectIcon = index;
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  color: (selectIcon == index)
                      ? Color(0xFFD8ECF1)
                      : Color(0xFFE7EBEE),
                  borderRadius: BorderRadius.circular(40)
              ),
              child: Icon(
                  Icons.place,
                  color: (selectIcon == index)
                      ?Color(0xFF3EBACE)
                      :Color(0xFFB4C1C4)),
            ),
          );
        },),
    );
  }
}
