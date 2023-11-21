import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(15),
      child: Row(
        children: [
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back ,
            size: 30,
            color:  Color.fromARGB(255, 11, 147, 120),
            ),
          ),

          Padding(padding: 
          EdgeInsets.only(left: 20),
          child: Text(
            'Cart',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontFamily: 'Gordita',
              color: Color.fromARGB(255, 11, 147, 120),
            ),
          ),
          ),
          Spacer(),
          Icon(
            Icons.more_vert,
            size: 30,
            color:  Color.fromARGB(255, 11, 147, 120),
          )

        ],
      ),
    );
  }
}