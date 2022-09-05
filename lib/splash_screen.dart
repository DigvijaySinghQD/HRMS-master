


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hrms/home.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget
{
  SplashState createState()=>SplashState();
}
class SplashState extends State<SplashScreen>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/qdegrees_logo.png')
            ),
          ),// Image
        ),//Center
      ),//Container
    );//Scaffold
  }

  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }
  
  
  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

/*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          InkWell(
            onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>SplashScreen()));
            },

            child: Text('Splash Screen'),
          )


        ],
      ),
    );
  }*/




}