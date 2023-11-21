import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottomNavBar extends StatelessWidget {
  const ItemBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 105,
      child: Container(
        
        padding: EdgeInsets.symmetric(horizontal: 18),
        decoration: BoxDecoration(
          
          color: Colors.white , 
          
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$70",
              style: TextStyle(
                fontSize: 25 , 
                fontWeight: FontWeight.bold , 
                color: Color.fromARGB(255, 11, 147, 120),
              ),
            ),

            ElevatedButton.icon(
              onPressed: (){},
              icon: Icon(CupertinoIcons.cart_badge_plus , color: Colors.white,), 
            label: Text(
              "Add To Cart",
              style: TextStyle(
                fontSize: 16 ,
                fontWeight: FontWeight.bold ,
                color: Colors.white
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 11, 147, 120)),
              padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(vertical: 13 , horizontal: 15)
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                )
              )
            ),
            )
          ],
        ),
      ),
    );
  }
}