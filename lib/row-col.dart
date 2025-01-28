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
    var arr=[1, 2, 3, 4, 5];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onSecondaryFixedVariant,
        title: Text(widget.title),
      ),
      body:ListView.separated(itemBuilder: (context, index) {
        return Image.asset('images/img1.jpg', height: 200, width: 200);
      },
        itemCount: 5,
        scrollDirection: Axis.vertical,
        separatorBuilder: (context, index) {
          return const Divider(height:1,);
        },

      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
