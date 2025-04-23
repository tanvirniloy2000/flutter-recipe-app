import "dart:ffi";
import "dart:ui";

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class  RecipeDetails StatefulWidget {
  
 final String name;
 final image;
 final description;
  
  const RecipeDetails({super.key,required This.name,required This description});

  @override
  State<RecipeDetails> createState() => _recipedetailsState();
}

class _recipedetailsState {
}

class _recipedetailsState extends State<RecipeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: colors.white
        ),
        backgroundColor: colors.redAccent,
        title: Text("recipe details",style: TextStyle(
          color: colors.white,
        ),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        children: [

          Row(
            children: [
              Image.asset("assets/images/${widget.image}"),
              width: MediaQuery.sizeOf(context).width,
              height:MediaQuery(context).height/3,
              fit: BoxFit.fitwidth,
              
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100
                width: MediaQuery.sizeOf(context).width,
                color: colors.redAccent,
                child: Center(
                  child: Text(widget.name,style: GoogleFonts.acme(
                    fontSize: 20,
                    color: colors.white
                  
                  ),
                                ),
                )
            ],
          ),
        Row(
          children: [
            Flexible(
              child: Padding(padding: const EdgeInsets.all(16.0),
              child: Text(widget.description,style: GoogleFonts.acme(
                fontSize: 16
              ),),
            )
          ],
        )
       
          
        ],
      ),
    );
  }
}