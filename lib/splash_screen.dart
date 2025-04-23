import 'dart:nativewrappers/_internal/vm/lib/async_patch.dart';

import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

//for a set timer

  startTimer() async{
    timer(Duration(seconds = 5),()){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()))
    }
  }


  @override
  void initstate(){
    // TODO: implement initstate
    super.initState();

    //call a function
    startTimer();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/recipe image.1.png"
            width: 200,
            height: 200,),
        
            SizedBox(height: 10,),
        
            Text("My recipe",style: GoogleFonts.acme(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: colors.redAccent
        
            ),),
            SizedBox(height: 10,),
        
            CircularProgressIndicator(
              color: Colors.redAccent,
            )
          ],
        ),
      ),
    );
  }
}