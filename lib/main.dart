import 'package:assignment5/about.dart';
import 'package:assignment5/exit.dart';
import 'package:assignment5/settings.dart';
import 'package:assignment5/tool.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



void main() {
   runApp(MaterialApp(home: myApp()));
}
 /* runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.deepPurple,
      accentColor: Colors.deepPurple
    ),
    home: new Scaffold(
      appBar: AppBar(
        title: Text("ImagesViewApp",
        style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
    *//*  floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.extension,
        ),
      ),*//*
      body: ListView(
        children: [
        Image.asset("assets/images/81D5Qj+yj3L.jpg")
      ],),
    )
  ));
}*/
class myApp extends StatefulWidget{
   const myApp({Key? key}) : super(key: key);

   @override
   State<myApp> createState() => _myAppState();
}
class _myAppState extends State<myApp> {
   var counter = "assets/images/81D5Qj+yj3L.jpg";
   @override
   Widget build(BuildContext context) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
         home: Scaffold(
            appBar: AppBar(
               actions: [
                  Theme(
                     data: Theme.of(context).copyWith(
                         dividerColor: Colors.black,
                         iconTheme: IconThemeData(color: Colors.black),
                         textTheme: TextTheme().apply(bodyColor: Colors.black),
                         backgroundColor: Color.fromARGB(100, 255, 255, 255)),
                     child: PopupMenuButton<int>(
                        color: Color.fromARGB(100, 255, 255, 255),
                        onSelected: (item) => onSelected(context, item),
                        itemBuilder: (context) => [
                           PopupMenuItem<int>(
                              value: 0,
                              child: Text('SETTINGS',
                                  style: TextStyle(fontSize: 20, color: Colors.black)
                              ),
                           ),
                           PopupMenuItem<int>(
                              value: 1,
                              child: Text('ABOUT',
                                  style: TextStyle(fontSize: 20, color: Colors.black)
                              ),
                           ),
                           PopupMenuDivider(),
                           PopupMenuItem<int>(
                              value: 2,
                              child: Row(
                                 children: [
                                    const SizedBox(width: 8),
                                    Text('EXIT',
                                    style: TextStyle(fontSize: 20, color: Colors.black)
                                    ),
                                 ],
                              ),
                           ),
                        ],
                     ),
                  ),
               ],
               title: const Text("ImageViewApp"),
               backgroundColor: Colors.deepPurple,
            ),
            body: Column(
               children: <Widget>[
                  Container(
                     padding: EdgeInsets.all(12.0),
                     alignment: Alignment.topLeft,

                     child: ElevatedButton(
                        child: Text("Add Image",
                        style: TextStyle(fontSize: 15,color: Colors.white),
                        ),
                        onPressed: () {
                           setState(() {
                            counter = "assets/images/81D5Qj+yj3L.jpg";
                           });
                        },
                     ),
                  ),
                  Container(
                     width: 90,
                     height: 90,
                     decoration: BoxDecoration(
                        shape: BoxShape.circle,
                     ),

                     child: Image(image: AssetImage(counter),fit: BoxFit.fill,),
                  ),
                  Container(
                     alignment: Alignment.topLeft,
                     padding: EdgeInsets.all(12.0),
                     child: ElevatedButton(
                        child: Text("OPEN NEXT PAGE",
                           style: TextStyle(fontSize: 12,color: Colors.white),
                        ),
                        onPressed: () {
                           Navigator.push(context,
                               MaterialPageRoute(builder: (context) => const ToolOfApp()));
                        },
                     ),
                  ),
                  Expanded(child: ListView(
                     children: const [
                        ListTile(
                           title: Text("Süreyya"),
                        ),
                        ListTile(
                           title: Text("Ahmet"),
                        ),
                        ListTile(
                           title: Text("Mehmet"),
                        ),
                        ListTile(
                           title: Text("Ayşe"),
                        ),
                        ListTile(
                           title: Text("Fatma"),
                        ),
                     ],
                     padding: EdgeInsets.all(10),
                  ))

               ],
            ),
         ),
      );

   }
}
void onSelected(BuildContext context, int item) {
   switch (item) {
      case 0:
         Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => SettingsPage()),
         );
         break;
      case 1:
         Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => AboutPage()),
         );
         break;
      case 2:
         Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => Exitpage()),
                (route) => false,
         );
   }
}