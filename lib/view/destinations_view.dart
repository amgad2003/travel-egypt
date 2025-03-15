import 'package:flutter/material.dart';
import 'package:untitled/datebase/datebase.dart';

class DestinationsView extends StatelessWidget {
  const DestinationsView({super.key,required this.index});
 final int? index;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Column(
         children: [
           Stack(
             children: [
               Container(
                 height: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                     boxShadow: [
                       BoxShadow(
                           blurRadius: 15,
                           offset: Offset(0, 7),
                           color: Colors.black54
                       ),
                       BoxShadow(
                           blurRadius: 15,
                           offset: Offset(0, 7),
                           color: Colors.black54
                       )
                     ]
                 ),
                 child:  Hero(
                   tag: destination[index!]['imageUrl'],
                   child: ClipRRect(
                     borderRadius: BorderRadius.circular(20),
                     child: Image(
                         height: MediaQuery.of(context).size.width,
                         fit: BoxFit.cover,
                         image: AssetImage(destination[index!]['imageUrl'])
                     ),
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     IconButton(
                         onPressed:() {
                           Navigator.of(context).pop();
                         },
                         icon: Icon(
                           Icons.arrow_back,
                           size: 30,
                           color: Colors.black,)
                     ),
                     Row(
                       children: [
                         IconButton(
                             onPressed: () {
                             },
                             icon: Icon(
                               Icons.search,
                               size: 30,
                               color: Colors.black,)
                         ),
                         IconButton(
                             onPressed: () {
                             },
                             icon: Icon(
                               Icons.sort,
                               size: 30,
                               color: Colors.black,)
                         ),
                       ],
                     ),
                   ],
                 ),
               ),
               Positioned(
                 bottom: 15,
                 left: 15,
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Row(
                       children: [
                         Icon(Icons.location_on,color: Colors.white,),
                         Text(
                           destination[index!]['city'],
                           style: TextStyle(
                               color: Colors.white,
                               fontSize: 30,
                               fontWeight: FontWeight.bold))
                       ],
                     ),
                     Row(
                       children: [
                         Icon(Icons.location_history,color: Colors.white,),
                         Text(
                           destination[index!]['country'],
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 25
                           ),)
                     ],)
                   ],
                 ),
               )
             ],
           ),
           Expanded(
             child: SizedBox(
               child: ListView.builder(
                   itemCount: activities.length,
                   itemBuilder: (context, index) {
                     return Stack(
                       children:[
                       Container(
                         margin: EdgeInsets.fromLTRB(70, 5, 20, 5),
                         height: 190,
                         decoration: BoxDecoration(
                           color: Colors.green,
                           borderRadius: BorderRadius.circular(20),
                         ),
                       ),
                         Positioned(
                           top: 10,
                           bottom: 10,
                           left: 15,
                           child: ClipRRect(
                             borderRadius: BorderRadius.circular(20),
                             child: Image(
                                 width: 130,
                                 fit: BoxFit.cover,
                                 image: AssetImage(activities[index]['imageUrl'])
                             ),
                           ),
                         ),
                       ]
                     );
                   },
               ),
             ),
           )
         ],
       ),

     );
  }
}