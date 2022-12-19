import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

class HomePage extends StatefulWidget {
static final String id = "new_app";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      body: Center(
        child: Text('HELLO',style: TextStyle(fontSize: 32,color: Colors.blueGrey,fontWeight: FontWeight.bold)),
      ),
    );
  }
}
