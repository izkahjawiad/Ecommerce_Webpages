import 'package:basic_ecommerce_pages/Info.dart';
import 'package:basic_ecommerce_pages/app.dart';
import 'package:basic_ecommerce_pages/history.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      primaryColor: Colors.white,
   ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: MyMain(),)
    );
  }
}

class MyMain extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage("assets/bg.png"),
                  fit: BoxFit.cover,
                  )
                ),
              child: Column(children: [
                //Front Image
                  Container(
                    margin: EdgeInsets.all(40),
                    height: 300,
                    width: 300,
                    child: Image.asset("assets/ecommerce.png"),
                  ),
                //Heading
                Container(
                  padding: EdgeInsets.only(bottom: 10, top: 10, left: 30, right: 30),
                  child: Text("Basic Ecommerce Webpages",style: TextStyle(fontFamily: "Simple", fontSize: 35, fontWeight: FontWeight.bold)),
                  decoration: BoxDecoration(
                    color: Color(0xffd8d0f7),
                    borderRadius: BorderRadius.circular(50),
                    
                  ),
                ),
                //Button for Page 1
                Container(
                  margin: EdgeInsets.only(top: 50, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("For First Page: ", style:TextStyle(fontFamily: "Simple_B", fontSize: 25)),
                      SizedBox(width:10),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context) => Info()));
                        },
                        child: Text("Click Here", style:TextStyle(fontFamily: "Simple", fontSize: 25)),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                          primary:Color(0xff876af7),
                          
                        )
                        
                      ),
                    ],
                  ),
                ),
                //Button for Page 2
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("For Second Page: ", style:TextStyle(fontFamily: "Simple_B", fontSize: 25)),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context) => App()));
                        },
                        child: Text("Click Here", style:TextStyle(fontFamily: "Simple", fontSize: 25)),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                          primary:Color(0xff876af7),
                          
                        )
                        
                      ),
                    ],
                  ),
                ),
                //Button for Page 3
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("For Third Page: ", style:TextStyle(fontFamily: "Simple_B", fontSize: 25)),
                      SizedBox(width:10),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context) => History()));
                        },
                        child: Text("Click Here", style:TextStyle(fontFamily: "Simple", fontSize: 25)),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                          primary:Color(0xff876af7),
                          
                        )
                        
                      ),
                    ],
                  ),
                )
                ]
              ),
            ),
          ),
        );
  }
}

