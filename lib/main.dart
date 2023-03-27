import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pestaña TabBar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} //MyHomePage statefulwidget

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff000000),
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: const Color(0xfff2b42d)),
            tabs: const [
              Tab(icon: Icon(Icons.account_circle)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.favorite)),
            ],
          ),
          title: const Text('Carls Jr'),
          centerTitle: true,
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.flight, size: 350),
            Icon(Icons.directions_transit, size: 350),
            Icon(Icons.directions_car, size: 350),
            Icon(Icons.favorite, size: 350),
          ],
        ),
      ),
    );
  } //Widget BuildContext
} //MyHomePageState
