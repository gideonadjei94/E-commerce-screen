import 'package:flutter/material.dart';

class Electronics extends StatelessWidget {
  const Electronics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      appBar: AppBar(
        title: Text(
          'Electronics',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
          ),
      ),

      body:  Container(
          margin: EdgeInsets.only(top: 15),
          // height: 430,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(26),
                topRight: Radius.circular(26)
              )
          ),
          padding: EdgeInsets.fromLTRB(10 , 16 ,10 ,10),
          child: ListView(
            children: [
              Container(
                child: ListTile(
                  leading: Icon(Icons.laptop),
                  title: Text(
                    'Laptops and Computers',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  trailing: Icon(Icons.navigate_next),
                  onTap: (){},
                ),
              ),

              Divider(height: 1),

              Container(
                margin: EdgeInsets.only(top: 16),
                child: ListTile(
                  leading: Icon(Icons.keyboard),
                  title: Text(
                    'Computer Accessories',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  trailing: Icon(Icons.navigate_next),
                  onTap: (){},
                ),
              ),

               Divider(height: 1),

              Container(
                margin: EdgeInsets.only(top: 16),
                child: ListTile(
                  leading: Icon(Icons.router_outlined),
                  title: Text(
                    'Networking Products',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  trailing: Icon(Icons.navigate_next),
                  onTap: (){},
                ),
              ),
               Divider(height: 1),

              Container(
                margin: EdgeInsets.only(top: 16),
                child: ListTile(
                  leading: Icon(Icons.phone_android),
                  title: Text(
                    'Mobile Phones & Tablets',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  trailing: Icon(Icons.navigate_next),
                  onTap: (){},
                ),
              ),
               Divider(height: 1),
               
              Container(
                margin: EdgeInsets.only(top: 16),
                child: ListTile(
                  leading: Icon(Icons.headphones),
                  title: Text(
                    'Mobile Phones Accessories',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  trailing: Icon(Icons.navigate_next),
                  onTap: (){},
                ),
              ),

               Divider(height: 1),

              Container(
                margin: EdgeInsets.only(top: 16),
                child: ListTile(
                  leading: Icon(Icons.watch),
                  title: Text(
                    'Smart watches',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  trailing: Icon(Icons.navigate_next),
                  onTap: (){},
                ),
              ),

               Divider(height: 1),

              Container(
                margin: EdgeInsets.only(top: 16),
                child: ListTile(
                  leading: Icon(Icons.gamepad),
                  title: Text(
                    'Video games & Consoles',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  trailing: Icon(Icons.navigate_next),
                  onTap: (){},
                ),
              ),

               Divider(height: 1),

              Container(
                margin: EdgeInsets.only(top: 16),
                child: ListTile(
                  leading: Icon(Icons.speaker),
                  title: Text(
                    'Audio & Music Equipments',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  trailing: Icon(Icons.navigate_next),
                  onTap: (){},
                ),
              ),

               Divider(height: 1),
               
              Container(
                margin: EdgeInsets.only(top: 16),
                child: ListTile(
                  leading: Icon(Icons.devices_other),
                  title: Text(
                    'Others',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  trailing: Icon(Icons.navigate_next),
                  onTap: (){},
                ),
              ),
              Divider(height: 1)
            ],
          ),
    )
    );
  }
}