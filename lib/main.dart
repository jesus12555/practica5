import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pestaña tab',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.lightBlue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.cyan), //Change background color from here
            tabs: [
              Tab(icon: Icon(Icons.accessibility_new)),
              Tab(icon: Icon(Icons.account_circle_sharp)),
              Tab(icon: Icon(Icons.add_home_work)),
              Tab(icon: Icon(Icons.add_comment)),
            ],
          ),
          title: Text('Tabs Demo'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.accessibility_new, size: 350),
            Icon(Icons.account_circle_sharp, size: 350),
            Icon(Icons.add_home_work, size: 350),
            Icon(Icons.add_comment, size: 350),
          ],
        ),
      ),
    );
  }
}
