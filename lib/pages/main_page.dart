
import 'package:flutter/material.dart';
class MainPage extends StatefulWidget {
  static final String id = 'main_page';

  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase'),
      ),
      body: Center(
        child: Text('MainPage',style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
