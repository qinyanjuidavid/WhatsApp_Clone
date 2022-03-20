import 'package:app_bar/status_page.dart';
import 'package:flutter/material.dart';
import './calls_page.dart';
import './camera_page.dart';
import './chats_page.dart';
import './status_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Widget buildPage(String text) {
      return Center(
        child: Text("Hello World"),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blueGrey,
      ),
      title: "WhatsApp",
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(7, 94, 84, 1),
            elevation: 10,
            titleSpacing: 20,

            title: Text(
              "WhatsApp",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.search,
                  size: 25,
                ),
                color: Colors.white,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.more_vert,
                  size: 25,
                ),
                color: Colors.white,
                onPressed: () {},
              ),
            ],

            // centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(7, 94, 84, 1),
                    Color.fromRGBO(7, 94, 84, 1)
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topLeft,
                ),
              ),
            ),
            bottom: TabBar(
              indicatorColor: Colors.white,
              // isScrollable: true,
              indicatorWeight: 2,
              tabs: [
                Tab(
                  icon: Icon(Icons.camera_alt),
                ),
                Tab(
                  text: "CHATS",
                ),
                Tab(
                  text: "STATUS",
                ),
                Tab(
                  text: "CALLS",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              CameraPage(),
              ChatsPage(),
              StatusPage(),
              CallsPage(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Color.fromRGBO(37, 211, 102, 1),
            onPressed: () {},
            tooltip: 'Increment',
            child: Icon(Icons.message_sharp),
          ),
        ),
      ),
    );
  }
}
