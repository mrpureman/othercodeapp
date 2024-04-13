import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Card(
              child: ListTile(
            title: Text('Тряска'),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MyCustomForm()));
            },
            trailing: Icon(Icons.arrow_forward_sharp),
          )),
          Card(
              child: ListTile(
            title: Text('Увеличение'),
            onTap: () {},
            trailing: Icon(Icons.arrow_forward_sharp),
          )),
          Card(
              child: ListTile(
            title: Text('Стикеры и анимация списка'),
            onTap: () {},
            trailing: Icon(Icons.arrow_forward_sharp),
          )),
          Card(
              child: ListTile(
            title: Text('Увеличение картинки в карточку'),
            onTap: () {},
            trailing: Icon(Icons.arrow_forward_sharp),
          )),
        ],
      ),
    );
  }
}

class EditWithEffect extends StatelessWidget {
  const EditWithEffect({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Тряска")));
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Тряска")),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Введи текст',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
        ],
      ),
    );
  }
}
