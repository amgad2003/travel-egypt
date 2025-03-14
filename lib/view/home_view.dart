
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter_named/font_awesome_flutter_named.dart';
import 'package:untitled/widget/destinations.dart';
import 'package:untitled/widget/list_of_icons.dart';
import '../datebase/datebase.dart';
import '../widget/tell_us.dart';

class ViewHome extends StatefulWidget{

  const ViewHome({super.key});

  @override
  State<ViewHome> createState() => _ViewHomeState();
}

class _ViewHomeState extends State<ViewHome> {
  int selectIcon =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F5F7),
      body: ListView(
        children: [
          SizedBox(height: 40,),
          TellUs(),
          SizedBox(height: 20,),
          ListOfIcons(),
          SizedBox(height: 20,),
          Destinations(),
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount:  destination.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(top: 15,bottom: 15,right: 7,left: 7),
                    width: 210,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Positioned(
                          bottom: 5,
                          child: Container(
                            height: 120,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,top: 40),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${destination[index]['activities'].length} Aativities',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                    )
                                  ),
                                  Text(
                                    destination[index]['description'],
                                    style: TextStyle(
                                      color: Colors.grey[600]
                                    ),
                                    maxLines: 2,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black54,
                                blurRadius: 10,
                                offset: Offset(4, 4)
                            ),
                              BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 10,
                                  offset: Offset(-4, 4)
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(
                                    destination[index]['imageUrl'])
                                ,fit: BoxFit.cover ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
