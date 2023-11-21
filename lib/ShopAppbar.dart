import 'package:flutter/material.dart';
import 'CartPage.dart';


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
            Icons.arrow_back,
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
              padding: EdgeInsets.fromLTRB(7, 1, 7,1),
             
              smallSize: 2.0,
              // largeSize: 6.0,
              label: Text(
                '3',
                style: TextStyle(
                  color: Colors.white
                ),
                ),
              child:
               InkWell(
                onTap: (){
                 
                },
                child: Icon(
                  Icons.notifications_none,
                  size: 30,
                  color: Color.fromARGB(255, 11, 147, 120),
                  ),
              ),
            ),
            // SizedBox(width: 5),
           
            
            PopupMenuButton(
              icon: Icon(
                Icons.more_vert,
                color:Color.fromARGB(255, 11, 147, 120),
                ), 
              onSelected: (String result){
                if(result == 'option1'){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => CartPage()),
                  );
                }
              },
              
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  value: 'option1',
                  child: Text('Saved'),
                ),
                PopupMenuItem<String>(
                  value: 'option2',
                  child: Text('Sort by'),
                ),
              ]
            )
            
            
             ],
      ),
            );
            
              
       
    
  }
}