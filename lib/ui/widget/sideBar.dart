import 'package:flutter/material.dart';
import 'package:ta_mopro/ui/util/util.dart';

import '../util/util.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double tinggi = MediaQuery.of(context).size.height;
    final double lebar = MediaQuery.of(context).size.width;
    return Drawer(
      backgroundColor: Colors.amber,
      child: FractionallySizedBox(
        alignment: Alignment.centerLeft,
        child: Column(
          //  padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: tinggi * 0.3,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: PrimaryColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Quick Store',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 24,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: tinggi * 0.5,
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text('Home 3'),
                onTap: () {
                  // TODO: Tambahkan logika navigasi ke halaman Home
                },
              ),
            ),
            Container(
              height: tinggi * 0.2,
              color: Colors.white,
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30)),
                    child: Icon(
                      Icons.account_circle,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  width: lebar * 0.6,
                  height: tinggi,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hi.. Adi",
                          style: TextStyle(fontSize: 20),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Lihat Profil"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: PrimaryColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            minimumSize: Size(100, 30),
                            //fixedSize: Size(100, 30),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
