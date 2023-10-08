import 'package:flutter/material.dart';
import 'package:ta_mopro/ui/util/util.dart';
import 'package:ta_mopro/ui/widget/search.dart';
import '../widget/benner.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //  var mediaQuery = MediaQuery.of(context);
    // var Tinggi = mediaQuery.size.height;
    // var Lebar = mediaQuery.size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        elevation: 0,
        title: Text("Home"),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border_outlined),
            onPressed: () {
              // Aksi yang dilakukan ketika ikon pertama diklik
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_basket_outlined),
            onPressed: () {
              // Aksi yang dilakukan ketika ikon kedua diklik
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: PrimaryColor,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        child: Benner(),
                      ),
                      Container(
                        child: Benner(),
                      ),
                      Container(
                        child: Benner(),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                       height: 50,
                      width: double.infinity,
                      child: Search(),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                      ),
                     
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
