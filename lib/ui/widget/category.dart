import 'package:flutter/material.dart';

class Kategori extends StatelessWidget {
  const Kategori({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     // height: 50,
            width: double.infinity,
            //color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                // navigator
                Navigator.pushNamed(context, '/loginPage');
              },
              child: Container(
                child: Text("item 1"),
               // color: Colors.white,
              ),
            ),
          ),
             Flexible(
            flex: 1,
            child: GestureDetector(
              onDoubleTap: () {
                // navigator
              },
              child: Container(
                child: Text("item 2"),
                color: Colors.white,
              ),
            ),
          ),
             Flexible(
            flex: 1,
            child: GestureDetector(
              onDoubleTap: () {
                // navigator
              },
              child: Container(
                child: Text("item 3"),
                color: Colors.white,
              ),
            ),
          ),
             Flexible(
            flex: 1,
            child: GestureDetector(
              onDoubleTap: () {
                // navigator
              },
              child: Container(
                child: Text("item 4"),
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}