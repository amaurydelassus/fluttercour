import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercour/home/profil/profil_page.dart';
import 'package:fluttercour/home/settings/settings_page.dart';

import '../screen1.dart';
import '../screen2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _BottomNavigationBarIndex = 0;
  int _selectedIndex2 = 0;
  List<Widget> _page = [const SettingsPage(), const ProfilePage(), const Screen1(),const HomePage2()];

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Blogie"),
        centerTitle: true,
        foregroundColor: Color(0xFF000000),
        backgroundColor: Color(0xFFFFFFFF),
      ),
      body: _page[_selectedIndex2],
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(
                left: 0.0,
                right: 5.0,
                top: 10.0,
                bottom: 5.0,
              ),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex2 = 2;
                  });
                },
                child: Container(
                  height: 55,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Center(
                    child: Text(
                      'Connexion',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(
                left: 5.0,
                right: 0.0,
                top: 10.0,
                bottom: 5.0,
              ),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex2 = 3;
                  });
                },
                child: Container(
                  height: 55,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Text(
                      'Inscription',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _BottomNavigationBarIndex,
        onTap: (index) {
          setState(() {
            _BottomNavigationBarIndex = index;
            _selectedIndex2 = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
