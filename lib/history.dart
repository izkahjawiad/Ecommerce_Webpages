import 'package:flutter/material.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
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
              child: Container(
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.all(20),
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(5),
                  ),
                      width: 400,
                      child: TextField(
                        style: TextStyle(fontSize: 15),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.grey[400])
                            ),
                            suffixIcon: const Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            
                            hintText: "User Name"),
                      ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left:30),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("History", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                  )
              ),
              SizedBox(height: 20),
              history("IPhone 12", "mob.jpg"),
              history("Note 20 Ultra", "note20.jpeg"),
              history("Macbook Air", "macbook.png"),
              history("Macbook Pro", "macpro.jpg"),
              history("Gaming PC", "gamingpc.jpg"),
              history("Backlit Keyboard", "backlit.png"),
              history("Wireless Headphone", "head.jpg"),
              history("Mercedes", "merc.jpg"),
              history("Roadster", "road.jpg"),
              history("Royal Enfield", "royal.jpg"),
              


          ],)
        ),
      ),
    );
  }
}

Widget history(String name, String img){
  return Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/${img}"),
                ),
                title: Text(name, style: TextStyle( fontSize:20, fontWeight: FontWeight.bold),),
                subtitle: Row(children:[
                  Container(
                    height: 13,
                    width: 13,
                    child: Image.asset("assets/star.png")
                    ),
                    SizedBox(width:5),
                  Text("5.0 (23 Reviews)")]),
                trailing: Text(r"$10"),
              ),
            );
}