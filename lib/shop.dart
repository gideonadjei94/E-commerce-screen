import 'package:flutter/material.dart';
import 'Categories.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'ShopAppbar.dart';
import 'items.dart';

void main() {
  runApp(MaterialApp(
    home: Shop(),
  ));
}

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:  ListView(
        children: [
          ShopAppBar(),
          Container(
            // height: 500,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35)
              )
            ),

            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)
                  ),

                  //Textfield widget
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here" ,
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.camera_alt,
                        size: 27,
                        color:  Color.fromARGB(255, 11, 147, 120),
                        ),
                    ],
                  ),
                ),

                //category
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(
                    vertical: 20 , 
                    horizontal: 10,
                  ),
                  child: const Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 25 ,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 11, 147, 120),
                    ),
                  ),
                ),

                //Categories widget
                const Categories(),

                //Best selling
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(
                    vertical: 20 , 
                    horizontal: 10,
                  ),
                  child: const Text(
                    'Best Selling',
                    style: TextStyle(
                      fontSize: 25 ,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 11, 147, 120),
                    ),
                  ),
                ),

                //items widget
                Items(),

            
              ],
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor:Color.fromARGB(255, 11, 147, 120),
        onPressed: (){},
        child: Icon(
          Icons.sell_outlined ,
          color: Colors.white,
        ),
         elevation: 6.0, // Set elevation
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), 
      ),
    ));
    
  }
}