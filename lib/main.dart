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

    var arrNames = ['Alison', 'Benet', 'Colonel', 'Donna', 'Elenor', 'Franklin', 'George', 'Happy',];
    var numbers = ['1234567890', '4561237890', '7890123456', '1012345678', '1123456789', '1312456789', '1412356789', '1512346789',];
    return Scaffold(
        appBar: AppBar(

          backgroundColor: Theme.of(context).colorScheme.inversePrimary,

          title: Text('Dashboard'),
        ),

        body: ListView.separated(itemBuilder: (context, index){
          return ListTile(
            leading: Text('${index+1}' ,style: TextStyle(fontSize: 20),),
            title: Text(arrNames[index],style: TextStyle(fontSize: 35),),
            subtitle: Text(numbers[index],style: TextStyle(fontSize: 25),),

            trailing: Icon(Icons.phone, color: Colors.green,),
          );
        },
        itemCount:  arrNames.length,
            separatorBuilder: (context,index){
          return Divider(height: 100,thickness: 1,);
            },)




      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}