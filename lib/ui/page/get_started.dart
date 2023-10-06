import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            
            decoration: BoxDecoration(
              image: DecorationImage(

                  image: AssetImage('assets/1.png'), fit: BoxFit.cover),
            ),
          ),
  ElevatedButton.icon(
            onPressed: () {
              // Add your button's onPressed logic here
            },
            icon: Icon(Icons.abc), // Replace Icons.abc with the desired icon
            label: Text('Button'), // Replace 'Button' with the desired label text
          ),
        ],
      )
    );
  }
}
