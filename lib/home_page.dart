import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/constant.dart';
import 'package:flutter_recipe_app/recipe_details.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("my recipe app",style: GoogleFonts.acme(
          color: Colors.white

        ),),
      ),
      body:GridView.count(
        crossAxisCount:2,
        mainAxisSpacing: 10,
        children: [
          GestureDetector(
            onTap: () 
           {
            Navigator.push(context,MaterialPageRoute(builder =context)=> RecipeDetails( name:recipe1Name,image:image1, description:description1))
           }
            child: Card(
              elevation: 20,
              color: Colors.grey,
              margin: EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Color.redAccent
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.fastfood_rounded,
                    size: 10
                    color: colors.white,),
                    SizedBox(height: 10,),
                    Text(recipe1name,style: TextStyle(
                      color: colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
            ),
          ),
                    GestureDetector(
            onTap: () 
           {
            Navigator.push(context,MaterialPageRoute(builder =context)=> RecipeDetails( name:recipe2Name,image:image2, description:description2))
           }
            child: Card(
              elevation: 20,
              color: Colors.grey,
              margin: EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Color.redAccent
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(IconData.fastfood,
                    size: 10
                    color: colors.white,),
                    SizedBox(height: 10,),
                    Text(recipe2name,style: TextStyle(
                      color: colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
            ),
          ),
                    GestureDetector(
            onTap: () 
           {
            Navigator.push(context,MaterialPageRoute(builder =context)=> RecipeDetails( name:recipe3Name,image:image3, description:description3))
           }
            child: Card(
              elevation: 20,
              color: Colors.grey,
              margin: EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Color.redAccent
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.rice_bowl,
                    size: 10
                    color: colors.white,),
                    SizedBox(height: 10,),
                    Text(recipe3name,style: TextStyle(
                      color: colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
            ),
          ),
                    GestureDetector(
            onTap: () 
           {
            Navigator.push(context,MaterialPageRoute(builder =context)=> RecipeDetails( name:recipe4Name,image:image4, description:description4))
           }
            child: Card(
              elevation: 20,
              color: Colors.grey,
              margin: EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Color.redAccent
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.food_bank_sharp,
                    size: 10
                    color: colors.white,),
                    SizedBox(height: 10,),
                    Text(recipe4name,style: TextStyle(
                      color: colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
            ),
          )
        ], 
     )
    );
  }
}