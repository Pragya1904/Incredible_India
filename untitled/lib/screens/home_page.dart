import 'package:flutter/material.dart';
import 'package:untitled/components/categories.dart';
import '../components/items.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int s=0;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('INCREDIBLE INDIA!'),
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: Colors.indigo,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Categories(),
            Expanded(
              flex: 1,
              child: items(),
            ),
          ],
        ),
      ),
    );
  }
}
