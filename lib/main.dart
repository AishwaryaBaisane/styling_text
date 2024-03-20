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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
 
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('My RNW',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Text.rich(TextSpan(

          children: [

            TextSpan(text: 'Red & White',style: TextStyle(fontSize: 60,
                decoration:TextDecoration.underline,color:Colors.redAccent ,
                decorationColor:Colors.redAccent ,fontWeight: FontWeight.bold,letterSpacing: 1),),

            TextSpan(text : '\n      Multimidia Education',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.redAccent,height: -0.100),),
            TextSpan(text : '\n\n   Shaping "skills" for "scaling" heigher...!!! ',style: TextStyle(fontSize: 16,color: Colors.redAccent,height: 1,fontWeight: FontWeight.bold,),),

          ]
        ),

        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
