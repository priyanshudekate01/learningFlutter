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
        body:Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blue.shade50,
          child: Center(
            child: Container(
              width: 150,
              height: 150,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft:  Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                boxShadow:[
                  BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 7,
                    color: Colors.grey
                  )
                ] ,
                shape: BoxShape.rectangle,
                // borderRadius: BorderRadius.circular(20),
                color: Colors.blueGrey,
              ),
            ),
          ),
        )


      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}