import 'package:flutter/material.dart';
import 'ItemPage.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,

      children: [
        for(int i = 0 ; i <= 8 ;i++ )
        Container(
          padding: EdgeInsets.only(left: 15 , right: 15 , top: 10),
          margin: EdgeInsets.symmetric(vertical: 8 , horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 11, 147, 120),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text(
                      '-50%',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Icon(
                    Icons.bookmark_border,
                    color: Colors.red
                    ),
                ],
              ),

              InkWell(
                onTap: (){
                   Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ItemPage()),
          );
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/images/product_$i.png',
                    height: 120,
                    width: 120,
                    ),
                ),
              ),

              Container(
                padding: EdgeInsets.only(bottom: 6),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Product Title',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 11, 147, 120),
                  ),
                ),
              ),

              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Write description of product',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 11, 147, 120), 
                  ),
                  ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                    '\$70',
                    style: TextStyle(
                      fontSize: 16, 
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 11, 147, 120), 
                    ),
                  ),
                  Icon(
                    Icons.shopping_cart_checkout,
                    color:  Color.fromARGB(255, 11, 147, 120),
                  )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
      );
  }
}