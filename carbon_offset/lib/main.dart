import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  return runApp(MyApp());

}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {

              },
            ),
            title: Text('Tabs'),
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text("Tab1"),
                ),
                Tab(
                  child: Text("Tab 2"),
                ),
                Tab(
                  child: Text("Tab 3"),
                ),

              ],
            ),
          ),
          body: TabBarView(
            children: [
              new Card(
                color: Colors.yellow,
                child: Center(child: Text('Tab1')),
              ),
              new Card(
                color: Colors.orange,
                child: Center(child: Text('Tab2')),
              ),
              new Card(
                color: Colors.lightGreen,
                child: Center(child: Text('Tab3')),
              )
            ],

          ),
        ),
      )
    );
  }
}

