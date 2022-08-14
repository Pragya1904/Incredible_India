import 'package:flutter/material.dart';

import '../constants.dart';
import 'selectedIndex.dart';
class Categories extends StatefulWidget {
Categories();
int selectedIndex=0;
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories=["Destinations","Food","Nature"];
  Index sindex=Index();
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(vertical: 20),
    child: SizedBox(
      height: 25,
      child: ListView.builder(
        itemCount: categories.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context,index){return
        GestureDetector(
          onTap: (){
            setState(() {
              widget.selectedIndex=index;
              sindex.updateIndex(widget.selectedIndex);
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(categories[index],style:TextStyle(
                  fontWeight: FontWeight.bold,
                  color:widget.selectedIndex==index ? kTextColor : kTextLightColor,
                ),),
                Container(
                  margin:EdgeInsets.only(top: 5),
                  height: 2,
                  width: 30,
                  color: widget.selectedIndex==index?Colors.green:Colors.transparent,
                )
              ],
            ),
          ),
        );}),
    ),);
  }
}
