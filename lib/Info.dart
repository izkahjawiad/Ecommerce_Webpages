import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
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
          margin: EdgeInsets.only(top:25,left:20),
          child: 
              Column(
                children: [
                  Row( 
                    children: [
                      Container(
                          width: 150,
                          height: 150,
                          child: Image.asset("assets/profile.png"),
                        ),
                        SizedBox(width:20),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("User",style:  TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                            Text("abc@gmail.com", style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height:20),
                            Text("logout", style: TextStyle(color: Colors.purple[300]))
                          ]),
                      )
                    ],),
                    SizedBox(height:25),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("ACCOUNT INFORMATION", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                      ),
                    SizedBox(height:10),
                    ListTile(
                      title: Text("Full Name"),
                      subtitle: Text("User"),
                      trailing: IconButton(
                                  icon: Icon(Icons.edit),onPressed: (){},)
                    ),
                    listItem("Email", "user@gmail.com"),
                    listItem("Phone", "+0900-78601"),
                    listItem("Address", "New York, Random Street, House No. 72"),
                    listItem("Gender", "Female"),
                    listItem("Date of Birth", "October 13, 1999"),
                    
                ],
              )
        ),
      ),
    );
  }
}

Widget listItem(String title, String subtitle){
  return ListTile(
                    title: Text(title),
                    subtitle: Text(subtitle),
                    
                  );
}