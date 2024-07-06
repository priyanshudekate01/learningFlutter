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

    var names = ['Raman', 'Aman', 'Mighty', 'Xeno'];

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: const Center(child: Text('Flutter Container')),
      ),
        // ListView(
        //     scrollDirection: Axis.horizontal,
        //     children:[
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text('One', style: TextStyle(fontSize:23, fontWeight: FontWeight.w500)),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text('Two', style: TextStyle(fontSize:23, fontWeight: FontWeight.w500)),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text('Three', style: TextStyle(fontSize:23, fontWeight: FontWeight.w500)),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text('Four', style: TextStyle(fontSize:23, fontWeight: FontWeight.w500)),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text('Five', style: TextStyle(fontSize:23, fontWeight: FontWeight.w500)),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text('Six', style: TextStyle(fontSize:23, fontWeight: FontWeight.w500)),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text('Seven', style: TextStyle(fontSize:23, fontWeight: FontWeight.w500)),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text('Eight', style: TextStyle(fontSize:23, fontWeight: FontWeight.w500)),
        //       ),
        //
        //     ]
        // )

      body: ListView.separated(itemBuilder: (context, index) {
        return Row(
          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(names[index],style: TextStyle(fontSize : 21, fontWeight: FontWeight.w500),),
          ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(names[index],style: TextStyle(fontSize : 21, fontWeight: FontWeight.w500),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(names[index],style: TextStyle(fontSize : 21, fontWeight: FontWeight.w500),),
        )
          ],
        );
      },
      itemCount: names.length,
        separatorBuilder: (context, index){
        return Divider(height: 100,thickness: 2,);
        },
      )




       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
