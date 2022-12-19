import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_app/new_app.dart';
import 'package:new_app/pages/main_page.dart';
import 'package:new_app/pages/signin_page.dart';
class SplashPage extends StatefulWidget {
  static final String id = 'splash_page';
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}
class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initTimer();
  }
  void _initTimer(){
    Timer(const Duration(seconds: 2), (){
    _collNextPage();
    });
  }

  _collNextPage(){
    Navigator.pushReplacementNamed(context, SignInPage.id);
    /*if(isLoddedIn){
      Navigator.pushReplacementNamed(context, MainPage.id);
    }else{
      Navigator.pushReplacementNamed(context, SplashPage.id);
    }*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(193, 53, 132, 1),
              Color.fromRGBO(131, 58, 180, 1),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: Text('Welcome',style: TextStyle(fontSize: 35,color: Colors.white),),
              ),
            ),
            Text('All rights reserved',style: TextStyle(color: Colors.white, fontSize: 18),),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
