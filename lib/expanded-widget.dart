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
    var arr = [1, 2, 3, 4, 5];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onSecondaryFixedVariant,
        title: Text(widget.title),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blueGrey,
        child: Row(children: [
          Expanded(
            flex:10,
            child: Container(
              height: 100,
              width: 50,
              //color: Colors.green,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(1),
                border: Border.all(
                  color: Colors.green,
                  width: 0,
                  style: BorderStyle.solid,
                ),
                //shape: BoxShape.circle,
              ),
            ),
          ),
          Expanded(
            flex:10,
            child: Container(
              height: 100,
              width:50,
              color:Colors.blue,
            ),
          ),
          Expanded(
            flex:22,
            child: Container(
              height:100,
              width:50,
              color:Colors.pink,
            ),
          ),
          Expanded(
            child: Container(
              height:100,
              width:50,
              color:Colors.orange,
            ),
          )
        ]),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
