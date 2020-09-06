import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:PopupMenuInAppbar() ,
  ));
}

class PopupMenuInAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.pink,
          title: Text(" PopupMenuButton Example"),
          centerTitle: true,
          actions: <Widget>[
            PopupMenuButton(
              icon: Icon(Icons.menu),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Row(
                    children: [Icon(Icons.ac_unit,color:Colors.black),
                      Text("Flutter.io"),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Text("google.com"),
                ),
                PopupMenuItem(
                  child: Text("yahoo.com"),
                ),
              ],
            ),
          ],
        ),
        body: Center(
          child: Text("your Main Body"),
        ));
  }
}
