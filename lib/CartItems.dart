import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItems extends StatelessWidget {
  const CartItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for(int i = 0 ; i <= 2 ; i++)
          Container(
            height: 110,
            margin: EdgeInsets.symmetric(horizontal: 15 , vertical: 12),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
                Radio(
                  value: "",
                 groupValue: "", 
                 onChanged: (index){},
                 activeColor: Color.fromARGB(255, 11, 147, 120), 
                  ),
      
                  Container(
                    height: 70,
                    width: 70,
                    margin: EdgeInsets.only(right: 15),
                    child: Image.asset("assets/images/product_$i.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
                    children: [
                      Text(
                        "Product Title" ,
                        style: TextStyle(
                          fontSize: 18 ,
                          fontWeight: FontWeight.bold , 
                          color:Color.fromARGB(255, 11, 147, 120), 
                        ),
                      ),

                      Text(
                        "Product description..",
                        style: TextStyle(
                          color:Color.fromARGB(255, 11, 147, 120),
                        ),
                      ),
                      Text(
                        "\$70" ,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color:Color.fromARGB(255, 11, 147, 120), 
                        ),
                      )
                    ],
                  ),
                  ),
                  Spacer(),
                  Padding(
                    padding:EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.delete , 
                        color: Colors.red,
                        ),
      
                        
                      ],
                    ), 
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}