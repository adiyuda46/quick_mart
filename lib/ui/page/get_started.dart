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
                  image: AssetImage('assets/get3.png'), fit: BoxFit.cover),
            ),
          ),
          Center(
            child: Align(
                alignment: Alignment.bottomCenter,
                child: FractionalTranslation(
                  translation: Offset(0.0, -0.8),
                  child: Container(
                    height: 50,
                    width: 200,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/loginPage');
                      },
                      child: Text("get started",style: TextStyle(fontSize: 20),),
                    ),
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black,width: 3),
                      color: Colors.grey.shade100,
                    ),
                  ),
                ),),
          ),
        ],
      ),
    );
  }
}
