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

        title: const Center(child: Text('Flutter Container')),
      ),


      body: Center(
        child: InkWell(
          onTap: (){
            print('on Tab');
          },
          onDoubleTap: (){
            print('Double Tab');
          },
          onLongPress: (){
            print('LongPressed');
          },

          child: Container(
            width: 200,
            height: 200,
            color: Colors.yellow,
            child: Center(child: InkWell(
              onTap: (){
                print('text Clicked');
              },
                child: Text('Click here',style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),))),
          ),
        ),
      )





       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
