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
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> list = ['Apple','Banana','Orange'];

  String a = 'Apple';

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: DropdownButton<String>(
          value: a,
          icon: Icon(Icons.menu),
          iconEnabledColor: Colors.green,
          style: TextStyle(color: Colors.black),
          underline: Container(height: 2,color: Colors.white,),
          onChanged: (String? value) {
            setState(() {
              a = value!;
            });
          },
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          /*[
            DropdownMenuItem<String>(
            value: 'One',
            child: Text('One'),
            ),
            DropdownMenuItem<String>(
              value: 'Two',
              child: Text('Two'),
            ),
            DropdownMenuItem<String>(
              value: 'Three',
              child: Text('Three'),
            ),
          ]*/
        ),),
    ));
  }
}
