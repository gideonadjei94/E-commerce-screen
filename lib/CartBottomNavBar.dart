import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 125,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 13 , vertical: 0),
        // height: 110,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total:" , 
                  style: TextStyle(
                    color: Color.fromARGB(255, 11, 147, 120),
                    fontSize: 22 ,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  "\$210" ,
                  style: TextStyle(
                    fontSize: 23 ,
                    fontWeight: FontWeight.bold,
                    color: Colors.red
                  ),
                )
              ],
            ),

            Container(
              width: double.infinity,
              alignment: Alignment.center,
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 11, 147, 120),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Text(
                "Check Out",
                style: TextStyle(
                  fontSize: 18 ,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}