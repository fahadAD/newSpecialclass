import 'package:flutter/material.dart';
import 'package:untitled3/Home/main1.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [

          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                elevation: 30,
              ),
              onPressed: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context)=> HomePage(),),
                );

              }, child: Text('Next Page')),


         Tooltip(
           message: "hello",
           child: Text('hello'),
         ),

          Stack(
            children: [
              Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                color: Colors.teal,
              ),

              Container(
                height: 200,
                width: 200,
                color: Colors.lightGreen,
              ),

              Positioned(
                right: 100,
                top: 200,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.lightGreen,
                ),
              ),
            ],
          ),


        ElevatedButton(onPressed: (){
          showDialog(context: context, builder: (context){
            return AlertDialog(
              title: Text("done"),
            actions: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('cencel'))
            ],
            );
          });
        }, child: Text('submit'))


        ],
      ),



    );  }
}
