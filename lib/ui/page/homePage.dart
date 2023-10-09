import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ta_mopro/ui/util/util.dart';
import 'package:ta_mopro/ui/widget/category.dart';
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
 final double tinggi = MediaQuery.of(context).size.height;
    final double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
              Container(
                height: tinggi * 0.3,
                width: lebar,
                decoration: BoxDecoration(
                  color: PrimaryColor,
                ),
              ),
              Container(
                width: lebar,
                decoration: BoxDecoration(
                  color: Colors.red,
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
                  width: lebar,
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
                      width: lebar,
                      child: Search(),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10)
                      ),
                     
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Kategori(),
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
