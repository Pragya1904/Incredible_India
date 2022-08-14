import 'package:flutter/material.dart';
import 'package:untitled/components/food.dart';
import 'package:untitled/components/nature.dart';
import 'package:untitled/components/selectedIndex.dart';
import 'itemCard.dart';
import 'categories.dart';
import 'destinations.dart';
import 'package:untitled/constants.dart';
import 'selectedIndex.dart';
class items extends StatefulWidget {
  items();

  @override
  State<items> createState() => _itemsState();
}

class _itemsState extends State<items> {
  int selectedIndex=0;

  Index index1=Index();

  Destination destination = Destination();

  Food food=Food();

  Nature nature=Nature();

  int c = 0;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      primary: false,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        childAspectRatio: 0.90,
      ),
      itemCount: destination.NoOfPlaces(),
      itemBuilder: (context,int index){
        switch(index1.getIndexi())
        {
          case 0:return ICard((c++)%destination.NoOfPlaces());
          case 1: return ICard((c++)%food.NoOfFood());
          case 2: return ICard((c++)%nature.NoOfNature());
          default:return ICard((c++)%destination.NoOfPlaces());
        }
      },
    );
  }
}
