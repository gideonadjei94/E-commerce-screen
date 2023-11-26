import 'package:flutter/material.dart';

class Filepicker extends StatefulWidget {
  const Filepicker({super.key});

  @override
  State<Filepicker> createState() => _FilepickerState();
}

class _FilepickerState extends State<Filepicker> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
                margin: EdgeInsets.only(top: 4 , bottom: 6),
                child: Row(
                  children: [
                    Container(
                      height: 85,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 209, 243, 223),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Icon(
                        Icons.add,
                        color: Color.fromARGB(255, 11, 147, 120),
                        ),
                    ),
                  ],
                ),
               ),
    );;
  }
}