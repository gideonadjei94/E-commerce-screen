import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'ItemAppBar.dart';


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
              height: 35,
              edge: Edge.TOP,
              arcType: ArcType.CONVEY,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13),
                  child: Column(
                    children: [
                         Container(
                          padding: EdgeInsets.only(top: 45),
                          child: Row(
                            children: [
                              Icon(Icons.location_pin),
                              Padding(padding: EdgeInsets.only(left: 6 , top: 8),
                              child: Text(
                                "Location" , 
                                style: TextStyle(
                                  fontSize: 14 , 
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              )
                            ],
                          ),
                         ), 
                      
                      Padding(
                        padding:EdgeInsets.only(
                          top: 10,
                          bottom: 10
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

                      Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: EdgeInsets.only( bottom: 6),
                              child: Text(
                                "\$70",
                                style: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold , 
                                  color: Color.fromARGB(255, 11, 147, 120),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 0 , bottom: 10),
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
                                  
                                ],
                              )
                          ],
                        ), 
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 0),
                        child: Text(
                          "This is more detailed description of the product. You can write here more about the product. This is a lengthy description",
                          style: TextStyle(
                            fontSize: 17 ,
                            color: Color.fromARGB(255, 11, 147, 120),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 18 , bottom: 18),
                            width: 60,
                            height: 60,
                            alignment: Alignment.center,
                             decoration: BoxDecoration(
                                          color: Color.fromARGB(255, 11, 147, 120),
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: IconButton(
                                          onPressed: (){}, 
                                        icon: Icon(
                                          Icons.phone,
                                          color: Colors.white,
                                          size: 30,
                                          ),
                                        ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            width: 300,
                            height: 60,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                          // color: Color.fromARGB(255, 11, 147, 120),
                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(
                                            color: Color.fromARGB(255, 11, 147, 120),
                                            width: 3,
                                          )
                                        ),
                                        child: Text(
                                          "Start a Chat",
                                          style: TextStyle(
                                            fontSize: 18 ,
                                            fontWeight: FontWeight.bold , 
                                            color: Color.fromARGB(255, 11, 147, 120),
                                          ),
                                        ),
                                         ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            
        ],
      ),

    );
  }
}