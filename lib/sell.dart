import 'package:flutter/material.dart';

class Sell extends StatefulWidget {
  const Sell({super.key});

  @override
  State<Sell> createState() => _SellState();
}

class _SellState extends State<Sell> {
  var _value = "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      appBar: AppBar(
        title: Text(
          'Post New Add',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          ),
      ),

      body:ListView(
        children: [
        Container(
          margin: EdgeInsets.only(top: 15),
          height: 430,
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(10 , 16 ,10 ,10),
          child: Column(
            children: [
             DropdownButtonFormField(
              icon: Icon(Icons.navigate_next),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Color.fromARGB(255, 11, 147, 120),
                  width: 2.0)
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),
              onChanged: (v){},
              value: _value,
              items: [
                DropdownMenuItem(child: Text('Category*') , value: "0"),
                DropdownMenuItem(child: Text('Category1') , value: "1"),
                DropdownMenuItem(child: Text('Category2') , value: "2"),
                DropdownMenuItem(child: Text('Category3') , value: "3"),
              ],
             ),
        
             Container(
              margin: EdgeInsets.only(top: 16),
               child: TextField(
                
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 11, 147, 120),
                      width: 2.0
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  labelText: 'Product Title*'
                ),
                         
               ),
             ),
             Container(
              margin: EdgeInsets.only(top: 16),
               child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 11, 147, 120),
                      width: 2.0
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  labelText: 'Description*',
                  
                ),
                         
               ),
             ),
        
             Container(
              margin: EdgeInsets.only(top: 16),
              child: DropdownButtonFormField(
                icon: Icon(Icons.navigate_next),
                decoration: InputDecoration(
                   focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Color.fromARGB(255, 11, 147, 120),
                  width: 2.0)
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),
              onChanged: (v){},
              value: _value,
              items: const [
                DropdownMenuItem(child: Text('Region*') , value: "0"),
                DropdownMenuItem(child: Text('Greater Accra') , value: "1"),
                DropdownMenuItem(child: Text('Ashanti') , value: "2"),
                DropdownMenuItem(child: Text('Central') , value: "3"),
                DropdownMenuItem(child: Text('western') , value: "4"),
                DropdownMenuItem(child: Text('Eastern') , value: "5"),
                DropdownMenuItem(child: Text('Volta') , value: "6"),
                DropdownMenuItem(child: Text('Northern') , value: "7"),
                DropdownMenuItem(child: Text('Upper East') , value: "8"),
                DropdownMenuItem(child: Text('Upper West') , value: "9"),
                DropdownMenuItem(child: Text('Brong Ahafo') , value: "10"),
                
              ],
              ),
             ),
        
             Container(
              margin: EdgeInsets.only(top: 16),
               child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 11, 147, 120),
                      width: 2.0
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  labelText: 'Location*',
                  
                ),
                         
               ),
             ),
        
            
            ],
          ),
        ),

         Container(
              margin: EdgeInsets.only(top: 15),
               height: 190,
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(10 , 16 ,10 ,10),
                child: Column(
                  children: [
                    Container(
              margin: EdgeInsets.only(top: 6),
               child: TextField(
                
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 11, 147, 120),
                      width: 2.0
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  labelText: "Seller's Name*"
                ),
                         
               ),),

                Container(
              margin: EdgeInsets.only(top: 16),
               child: TextField(
                
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 11, 147, 120),
                      width: 2.0
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  labelText: 'Phone Number*'
                ),
                         
               ),),

               
                  ],
                ),
           ), 
        ]
      ),

      
    );
  }
}