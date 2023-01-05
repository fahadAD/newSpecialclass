import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
 bool checkBox=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text('application'),
  centerTitle: true,
),
drawer: Drawer(
  child: Column(
    children: [
      Container(
        height: 150,
        color: Colors.lightGreen,
        child: ListTile(
          leading: Icon(Icons.person_pin_rounded),
          title: Text('fahad'),
          trailing: Icon(Icons.phone_bluetooth_speaker_outlined),
        ),
      ),

    ],
  ),

),

floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
floatingActionButton: FloatingActionButton.extended(onPressed: (){}, label: const Text('hello')),


body: DefaultTabController(
  length: 3,
  initialIndex: 0,
  child:   Column(
    children: [
      Checkbox(value: checkBox, onChanged: (value){
  setState(() {
    checkBox=value!;
  });
      }),
      Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        color: Colors.teal,
        child: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.account_balance),
            ),
            Tab(
              icon: Icon(Icons.person_pin_rounded),
            ),
            Tab(
              icon: Icon(Icons.search),
            ),
          ],
  
        ),
  
      ),
      Container(
        color: Colors.orange,
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: TabBarView(
          children: [
            Container(child: Center(child: Text("tap1")),),
            Container(child: Center(child: Text("tap2")),),
            Container(child: Center(child: Text("tap3")),),

          ],
        ),
      )
      
    ],
  ),
),

    );
  }
}
