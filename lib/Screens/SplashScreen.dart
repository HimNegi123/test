import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mobiletheme/Screens/SignInScreen.dart';
class SplashScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 6)
    ,()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SignInScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Xenonstack',style: TextStyle(
                fontSize: 50,color:Colors.yellow,
          fontWeight: FontWeight.bold
              ),
              
            ), 
            SizedBox(height: 10),
            
            Text(
              'Project',
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'Pacifico',
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
