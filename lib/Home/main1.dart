

import 'package:flutter/material.dart';
import 'package:untitled3/Home/main2.dart';
import 'package:untitled3/Home/main3.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: Column(
        children:  [

          //page to page..
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
                elevation: 30,
              ),
              onPressed: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context)=> Favourite(),),
                );

              }, child: Text('Next Page')),

         Container(
           height: 200,
           width: MediaQuery.of(context).size.width,
           color: Colors.blue,
         ),
SizedBox(height: 10,),

Divider(
  thickness: 10,
  height: 5,
  color: Colors.lightGreen,

  indent: 100,
)

        ],

      ) ,
    );
  }
}
