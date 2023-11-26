import 'package:flutter/material.dart';
import 'package:market/categories%20screens/Electronics.dart';
import 'package:market/categories%20screens/fashion.dart';
import 'package:market/categories%20screens/food.dart';
import 'package:market/filepicker.dart';

class Sell extends StatefulWidget {
  const Sell({super.key});

  @override
  State<Sell> createState() => _SellState();
}

class _SellState extends State<Sell> {
  var _value = "0";
  bool _checked = false;
  bool _isChecked = false ;

  String price = '\$15';
  String text = 'Buy and Post Ad';
  List<bool> _isSelected = [true, false, false]; // Track container selections

  void _selectContainer(int index) {
    setState(() {
      // Toggle the selection state of the tapped container
      _isSelected[index] = !_isSelected[index];
        for (int i = 0; i < _isSelected.length; i++) {
        if (i != index) {
          _isSelected[i] = false;
        }
      }
    });
  }
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
          backgroundColor: Colors.white,
      ),
    
    
      body:ListView(
        children: [
        Container(
          margin: EdgeInsets.only(top: 15),
          // height: 430,
         
          padding: EdgeInsets.fromLTRB(10 , 16 ,10 ,18),
          decoration: BoxDecoration(
             color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(26),
                topRight: Radius.circular(26)
              )
          ),
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
              onChanged: ( value){
                if(value == "1"){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Electronics()),
                  );
                }else if(value == "3"){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Food()),
                     );
                }else if(value == "5"){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Fashion()),
                     );
                }
              },
              value: _value,
              items: const [
                DropdownMenuItem(child: Text('Category*') , value: "0"),
                DropdownMenuItem(child: Text('Electronics') , value: "1"),
                DropdownMenuItem(child: Text('Electrical Appliances') , value: "2"),
                DropdownMenuItem(child: Text('Food & Groceries') , value: "3"),
                DropdownMenuItem(child: Text('Beauty & Cosmetics') , value: "4"),
                DropdownMenuItem(child: Text('Fashion') , value: "5"),
                DropdownMenuItem(child: Text('Hostels') , value: "6"),
                DropdownMenuItem(child: Text('Repairs & Constructon') , value: "7"),
              ],
             ),
             Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Text(
                    'Add at least 2 photos'
                    ),
                ],
              )
                ),
             Filepicker(),
    
             Container(
              margin: EdgeInsets.only(top: 4),
              child: Row(
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'First picture - is the title picture . Drag to reorder.',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 12,
                      )
                    ),
    
                    
                  )
                ],
              )
                ),
             Container(
              child: Row(
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'supported Formats are ',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 12,
                      ),
                      children: [
                        TextSpan(
                          text: '.jpg, ',
                          style: TextStyle(
                            color: Colors.grey[650],
                            fontWeight: FontWeight.bold
                          )
                        ),
                        TextSpan(
                          text: ' .gif',
                          style: TextStyle(
                            color: Colors.grey[650],
                            fontWeight: FontWeight.bold
                          )
                        ),
                        TextSpan(
                          text: ' and',
                          style: TextStyle(
                            color: Colors.grey[500],
                           
                          )
                        ),
                        TextSpan(
                          text: ' .png',
                          style: TextStyle(
                            color: Colors.grey[650],
                            fontWeight: FontWeight.bold 
                           
                          )
                        ),
                      ]
                    )
                  ),
                ],
              )
                ),
    
                Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Pictures may not exceed ',
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 12
                        ),
                        children: [
                          TextSpan(
                            text: '5MB' ,
                            style: TextStyle(
                              color: Colors.grey[650],
                              fontWeight: FontWeight.bold
                            )
                          )
                        ]
                      )
                    )
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
              margin: EdgeInsets.only(top: 4),
               child: Row(
                children: [
                  Text(
                    '*Please provide detailed description.',
                    style: TextStyle(
                      fontSize: 13
                    ),
                  )
                ],
               ),
             ),
             Container(
               child: Row(
                children: [
                  Text(
                    'Mentioninng as many details as possible will',
                    style: TextStyle(
                      fontSize: 13
                    ),
                  )
                ],
               ),
             ),
             Container(
               child: Row(
                children: [
                  Text(
                    'make your Ad more attractive to buyers.',
                    style: TextStyle(
                      fontSize: 13
                    ),
                  )
                ],
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
          margin: EdgeInsets.only(top: 16),
          height: 190,
          padding: EdgeInsets.fromLTRB(10, 16 , 10 ,6),
          color: Colors.white,
          child: Column(
            children: [
              Container(
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
                    labelText: "Price* "
                  ),
                           
                 ),
              ),
               Row(
                children: [
                  Container(
                    child: Checkbox( 
                      value: _checked, 
                      onChanged: (bool? newValue){
                        if(newValue != null){
                          setState(() {
                            _checked = newValue ;
                          });
                           }
                      },
                      checkColor: Colors.white,
                      activeColor: Color.fromARGB(255, 11, 147, 120),
                      ),
                  ),

                    Container(
                      padding: EdgeInsets.only(top: 3),
                      child: Text(
                        'Negotiable',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),
                      
                      ),
                    )
                ],
               ),
               Row(
                children: [
                  Container(
                    child: Checkbox( 
                      value: _isChecked, 
                      onChanged: (bool? newValue){
                        if(newValue != null){
                          setState(() {
                            _isChecked = newValue ;
                          });
                           }
                      },
                      checkColor: Colors.white,
                      activeColor: Color.fromARGB(255, 11, 147, 120),
                      ),
                  ),

                    Container(
                      padding: EdgeInsets.only(top: 3),
                      child: Text(
                        'Delivery',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),
                      
                      ),
                    )
                ],
               )
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
                  labelText: "Seller's Name* "
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

           Container(
             margin: EdgeInsets.only(top: 15),
              //  height: 250,
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(10 , 16 ,10 ,10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Promote your Ad',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Choose a promotion type for your Ad to post it',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[500]
                          ),
                        ),
                      ],
                    ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          _selectContainer(0);
                          setState(() {
                            text = 'Post Ad';
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 350,
                          padding: EdgeInsets.only(left: 20 ,right: 20),
                          margin: EdgeInsets.only(top: 10 , bottom: 10),
                          decoration: BoxDecoration(
                            color: _isSelected[0]?Color.fromARGB(255, 209, 243, 223) : Colors.white ,
                            border: Border.all(
                              color: _isSelected[0]? Color.fromARGB(255, 11, 147, 120) : Colors.grey.shade500,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'No promo',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                'free',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                      GestureDetector(
                        onTap: (){
                          _selectContainer(1);
                          setState(() {
                            text = 'Buy and Post Ad';
                          });
                        },
                        child: Container(
                          height: 110,
                          width: 350,
                          margin: EdgeInsets.only(bottom: 10),
                          padding: EdgeInsets.only(left: 20 , right: 20 , top: 10),
                          decoration: BoxDecoration(
                            color: _isSelected[1]?Color.fromARGB(255, 209, 243, 223) : Colors.white ,
                            border: Border.all(
                              color: _isSelected[1]? Color.fromARGB(255, 11, 147, 120) : Colors.grey.shade500,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'TOP promo',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      _selectContainer(0);
                                      setState(() {
                                        price = '\$15';
                                      });
                                     
                                    },
                                    child: Container(
                                      height: 35,
                                      width: 75,
                                      margin: EdgeInsets.only(top: 10 , right: 12),

                          decoration: BoxDecoration(
                            color: _isSelected[0]?Color.fromARGB(255, 209, 243, 223) : Color.fromARGB(255, 209, 243, 223),
                            border: Border.all(
                              color: _isSelected[0]? Color.fromARGB(255, 11, 147, 120) : Colors.grey.shade500,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(18)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '7 days',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                                    ),
                                  ),

                                  GestureDetector(
                                    onTap: (){
                                      _selectContainer(1);
                                      setState(() {
                                        price = '\$40';
                                      });
                                    },
                                    child: Container(
                                      height: 35,
                                      width: 75,
                                      margin: EdgeInsets.only(top: 10 ),

                          decoration: BoxDecoration(
                            color: _isSelected[1]?Color.fromARGB(255, 174, 244, 203) : Colors.white ,
                            border: Border.all(
                              color: _isSelected[1]? Color.fromARGB(255, 11, 147, 120) : Colors.grey.shade500,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(18)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '30 days',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                                    ),
                                  ),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.only(top: 14),
                                  child: Text(
                                    '${price}',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          _selectContainer(2);
                          setState(() {
                            text = 'Buy and Post Ad';
                          });
                        },
                        child: Container(
                          height: 110,
                          width: 350,
                          margin: EdgeInsets.only(bottom: 10),
                          padding: EdgeInsets.only(left: 20 , right: 20 , top: 10),
                          decoration: BoxDecoration(
                            color: _isSelected[2]?Color.fromARGB(255, 209, 243, 223) : Colors.white ,
                            border: Border.all(
                              color: _isSelected[2]? Color.fromARGB(255, 11, 147, 120) : Colors.grey.shade500,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Super Premium promo',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                    ),
                                  )
                                ],
                              ),
                              
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 28),
                                    child: Text(
                                      '1 month'
                                    ),
                                  ),

                                  Container(
                                    margin: EdgeInsets.only(top: 28),
                                    child: Text(
                                      '\$100',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  ],
                ),
           ),

           Container(
             margin: EdgeInsets.only(top: 15 , bottom: 15),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        height: 50,
                        width: 370,
                        padding: EdgeInsets.only(left: 20 ,right: 20),
                          margin: EdgeInsets.only(top: 10 , bottom: 8),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 11, 147, 120),
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${text}' ,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                              ),

                              
                            ],
                          ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 24),
                      child: Column(
                        children: [
                          Text.rich(
                                      TextSpan(
                                        text: 'By clicking on Post Ad , you accept the ',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey[700],
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Terms of Use',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color:Color.fromARGB(255, 11, 147, 120),
                                              fontWeight: FontWeight.bold 
                                            )
                                          )
                                        ]
                                      )
                                    ),
                                    Text.rich(
                                      TextSpan(
                                        text: 'Confirm that you will abide by the Safety Tips, and declare that ',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey[700],
                                        )
                                      )
                                    ),

                                    Text.rich(
                                      TextSpan(
                                        text: 'this posting does not include any Prohibited Items',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey[700]
                                        )
                                      )
                                    )
                        ],
                      ),
                    )
                  ],
                ),
           ),
        ]
      ),
    
      
    );
  }
}