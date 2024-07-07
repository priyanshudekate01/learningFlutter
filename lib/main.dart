import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          backgroundColor: Theme.of(context).colorScheme.inversePrimary,

          title: Text('Dashboard'),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(top:11, left: 11),
        //
        //   child: Text('hello World!', style: TextStyle(fontSize: 25),),
        // )
        body: Container(
          margin: EdgeInsets.all(20),
            color: Colors.blueGrey,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text('Hello World!',style: TextStyle(fontSize: 30, color: Colors.black),),
            )),



      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}