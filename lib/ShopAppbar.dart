//  import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

//
// import 'package:flutter_svg/flutter_svg.dart';
 

class ShopAppBar extends StatelessWidget {
  const ShopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding:  EdgeInsets.fromLTRB(8, 20, 20, 20),
      child:  Row(
        children: [
          IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon: Icon(
            Icons.navigate_before,
            size: 30,
            color: Color.fromARGB(255, 11, 147, 120),
            ),
          ),
            const Padding(
              padding: EdgeInsets.only(left: 0),
              child: Text(
                'Market',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gordita',
                  color: Color.fromARGB(255, 11, 147, 120)
                ),
                
                ),
              ),
            const Spacer(),
            
            Badge(
              textColor: Colors.red,
              padding: EdgeInsets.all(7),
              label: Text(
                '3',
                style: TextStyle(
                  color: Colors.white
                ),
                ),
              child: InkWell(
                onTap: (){},
                child: Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                  color: Color.fromARGB(255, 11, 147, 120),
                  ),
              ),
            ),
            SizedBox(width: 5),
            Badge(
              
              textColor: Colors.white,
              padding: EdgeInsets.all(7),
              label: Text(
                '2',
              
                ),
                isLabelVisible: true,
              child: InkWell(
                onTap: (){},
                child: Icon(
                  Icons.notifications_none,
                  size: 30,
                  color: Color.fromARGB(255, 11, 147, 120),
                  ),
              ),
            ),
            
             ],
      ),
            );
            
              
       
    
  }
}