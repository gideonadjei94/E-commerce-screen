import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'ItemAppBar.dart';
import 'ItemBottomNavBar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: ListView(
        children: [
          ItemAppBar(),
          Padding(
            padding:EdgeInsets.all(16),
            child: Image.asset("assets/images/product_0.png" , height: 300),
            ),

            Arc(
              height: 30,
              edge: Edge.TOP,
              arcType: ArcType.CONVEY,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding:EdgeInsets.only(
                          top: 50,
                          bottom: 20
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Product Title",
                              style: TextStyle(
                                fontSize: 28,
                                color: Color.fromARGB(255, 11, 147, 120),
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ), 
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 5 , bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 20,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4),
                              itemBuilder: (context , _)=> Icon(Icons.favorite ,
                               color:Color.fromARGB(255, 11, 147, 120),
                               ), onRatingUpdate: (index) {},
                              ),

                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 10,
                                          offset: Offset(0, 3)
                                        )
                                      ]
                                    ),
                                    child: Icon(
                                      CupertinoIcons.add,
                                      size: 18,
                                    ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      "01",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color:Color.fromARGB(255, 11, 147, 120),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 10,
                                          offset: Offset(0, 3)
                                        )
                                      ]
                                    ),
                                    child: Icon(
                                      CupertinoIcons.minus,
                                      size: 18,
                                    ),
                                  )
                                ],
                              )
                          ],
                        ), 
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          "This is more detailed description of the product. You can write here more about the product. This is a lengthy description",
                          style: TextStyle(
                            fontSize: 17 ,
                            color: Color.fromARGB(255, 11, 147, 120),
                          ),
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          children: [
                            Text(
                              "Size",
                              style: TextStyle(
                                fontSize: 18 ,
                                fontWeight: FontWeight.bold,
                                color:Color.fromARGB(255, 11, 147, 120), 
                              ),
                            ),
                            SizedBox(width: 10),
                            Row(
                              children: [
                                for(int i = 1 ; i <= 5 ; i++)
                                Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                    color:Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                      )
                                    ]
                                  ),
                                  child: Text(
                                    "$i" ,
                                    style: TextStyle(
                                      fontSize: 18 ,
                                      fontWeight: FontWeight.bold,
                                      color:Color.fromARGB(255, 11, 147, 120),  
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            
        ],
      ),

      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}