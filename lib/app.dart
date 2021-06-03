import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("Ecom App UI",
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))),
          actions: [
            IconButton(
              icon: Icon(
                Icons.notifications,
              ),
              onPressed: () {
                    // do something
              },
            )
          ],
        ),
      body:
      SingleChildScrollView(
              child: Column(
          children: [
            techitems("IPhone12", "mob.jpg"),
            techitems("Note 20 Ultra", "note20.jpeg"),
            techitems("Macbook Air", "macbook.png"),
            techitems("Mackbook Pro", "macpro.jpg"),
            techitems("Gaming PC", "gamingpc.jpg"),
            techitems("Wireless HeadPhone", "head.jpg"),

            
          ]
        ),
      )      
    );
  }
}

Widget techitems(String name, String img){
  return Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(2.0, 2.0),
                  blurRadius: 1.0,
                  spreadRadius: 1.0,
                  color: Colors.grey[300]
                ),
              ]),
            child: Row(
              children: [
                Container(
                  height: 130,
                  width: 130,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("assets/${img}"),),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Row(children:[IconButton(icon: Icon(Icons.star, color: Colors.yellow),onPressed: (){},),Text("5.0 (23 Reviews)")]),
                    Row(children:[Text("20 Pieces"), SizedBox(width: 10), Text(r"$90", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.purple[400])),]),
                    SizedBox(height: 10),
                    Text("Quantity: 1"),
                  ]
                )
              ],
            )
          );
}