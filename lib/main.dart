import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
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
    /*  floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.extension,
        ),
      ),*/

      body: ListView(
        children: [
        Image.asset("assets/images/81D5Qj+yj3L.jpg")
          titleSection(),




      ],),

    )
  ));
}
Widget titleSection() {
  return ListView(
      children: ListTile.divideTiles(
          tiles: [
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
              title: Text("Fatma"),
            ),
            ListTile(
              title: Text("Ayşe"),
            ),
          ]
      ).toList()

  );

}

@override
Widget build(BuildContext context){
  return MaterialApp(
    home: Scaffold(
      body: BodyLayout(


      ),
    )

  );

}
class BodyLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return _myListView(context);
  }
}
Widget _myListView(BuildContext context){
  return ListView(
    children: ListTile.divideTiles(
      context: context,
      tiles: [
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
          title: Text("Fatma"),
        ),
        ListTile(
          title: Text("Ayşe"),
        ),
      ]
      ).toList()

  );
}
