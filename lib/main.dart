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


      body: Container(
        height: 500,
            width: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                Text('A',style: TextStyle(fontSize: 30)),
                    Text('B',style: TextStyle(fontSize: 30)),
                    Text('C',style: TextStyle(fontSize: 30)),
                    Text('D',style: TextStyle(fontSize: 30)),
                    Text('E',style: TextStyle(fontSize: 30)),
                ElevatedButton(onPressed: (){
                  print("helleo");
                }, child: Text('click'))


              ],



            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   // crossAxisAlignment: ,
            //   children: [
            //     Text('A',style: TextStyle(fontSize: 30)),
            //     Text('B',style: TextStyle(fontSize: 30)),
            //     Text('C',style: TextStyle(fontSize: 30)),
            //     Text('D',style: TextStyle(fontSize: 30)),
            //     Text('E',style: TextStyle(fontSize: 30))
            //   ],
            // )


        ),
      )





       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
