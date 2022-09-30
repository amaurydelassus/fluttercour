import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1();
}

class _Screen1 extends State<Screen1> {
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    List<Widget> _growableList = List<GestureDetector>.generate(
        30,
            (int index) =>
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
                print("card $index is tapped.$_selectedIndex");
              },
              child: Card(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.favorite,
                          color:
                          (_selectedIndex == index) ? Colors.pink : Colors.black,
                          size: 64.0,
                          semanticLabel: 'Text to announce in accessibility modes',
                        ),
                        Text('Item $index')
                      ])),
            ),
        growable: true);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: const Text(
              textAlign: TextAlign.center,
              'Select at least Topics to personalize your homepage ',
            ),
          ),
        ),
        Center(child : GridView.builder(
          padding: EdgeInsets.all(20.0),
          primary: true,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: _growableList.length,
          itemBuilder: (BuildContext context, int index) {
            return _growableList[index];
          },
        ))

      ],
    );
  }
}
